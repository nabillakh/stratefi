package stratefi

import grails.transaction.Transactional

import compte.*
import stratefi.comparateur.*
import stratefi.simulateur.*


@Transactional
class OutilService {

    def afficherListePdf(Simulation simulationInstance) {
        
        
        def plans = []
        
        simulationInstance.planDeFinancement.each() {pdf ->
            plans << [
                mois : Math.round(pdf.mois),
                capaciteDAutofinancement : Math.round(pdf.capaciteDAutofinancement),
                cessionDImmobilisations : Math.round(pdf.cessionDImmobilisations),
                augmentationCapital : Math.round(pdf.augmentationCapital),
                subventions : Math.round(pdf.subventions),
                emprunts : Math.round(pdf.emprunts),
                dividendesVerses : Math.round(pdf.dividendesVerses),
                investissements : Math.round(pdf.investissements),
                remboursementCapitalDesEmprunts : Math.round(pdf.remboursementCapitalDesEmprunts),
                variationDuBFRE : Math.round(pdf.variationDuBFRE),
                emplois : (Math.round(pdf.dividendesVerses )+ 
                    Math.round(pdf.remboursementCapitalDesEmprunts) +
                    Math.round(pdf.investissements )+
                    Math.round(pdf.variationDuBFRE)),
                ressources : (Math.round(pdf.capaciteDAutofinancement )+
                    Math.round(pdf.cessionDImmobilisations )+
                    Math.round(pdf.augmentationCapital )+ 
                    Math.round(pdf.subventions) + Math.round(pdf.emprunts)), 
            ] 
        }
        
        return plans
    }
    
    
    def simulationMoyenne(Produit produit) {
        def simulation = new Simulation()
        
        simulation.produit = produit
        simulation.nom = produit.nom
        simulation.coutVarInvestisseur = produit.coutVarInvestisseurMin
        simulation.coutVarEntreprise = produit.coutVarEntrepriseMin
        simulation.coutFixeDebut = produit.coutFixeDebut
        simulation.coutFixeFin = produit.coutFixeFin
        simulation.montant  = 50000 
        simulation.temps = produit.tempsMinimum
        simulation.recurrent = produit.recurrentMin
        
        return simulation
        
    }
    
    
    def genererPlan(Simulation simulation) {
        // si c'est un prêt
        
        if(simulation.produit.typeProduit.id == 3) {
            return planCredit(simulation)
        }
        if(simulation.produit.typeProduit.id == 1) {
            return planLevee(simulation)
        }    
    }
    
    def planLevee(Simulation simulation) {
        def duree = simulation.temps   
        def montantEmprunt = (simulation.montant)
        def recurrent = (simulation.recurrent) /12 /100
        def coutFixeDebut = (simulation.coutFixeDebut)
        def coutFixeFin = (simulation.coutFixeFin)
        def coutVarEntreprise = (simulation.coutVarEntreprise) /100
        
        def planInitial = new PlanDeFinancement(simulation : simulation)
        planInitial.augmentationCapital = montantEmprunt
        planInitial.capaciteDAutofinancement = - (coutFixeDebut + coutFixeFin + ((coutVarEntreprise * montantEmprunt)))
        planInitial.save()
        def mensualite = montantEmprunt * (recurrent / (1-Math.pow((1+recurrent),(-duree))) )    
        
        def restantDu = montantEmprunt
        
        simulation.addToPlanDeFinancement(planInitial)
        def interetMois = 0
        def capital = 0
    
        def coutCredit = 0
        
        for(int i = 1; i<duree+1;i++) {
            def plan = new PlanDeFinancement(simulation : simulation, mois : i)
            
            interetMois = Math.round((restantDu * recurrent))
            coutCredit = coutCredit + interetMois
            
            
            plan.dividendesVerses = interetMois
            plan.save()
            simulation.addToPlanDeFinancement(plan)
                
        }
        
        
        
    }
    def planCredit(Simulation simulation) {
        def duree = simulation.temps   
        def montantEmprunt = (simulation.montant)
        def recurrent = (simulation.recurrent) /12 /100
        def coutFixeDebut = (simulation.coutFixeDebut)
        def coutFixeFin = (simulation.coutFixeFin)
        def coutVarEntreprise = (simulation.coutVarEntreprise) /100
        
        def planInitial = new PlanDeFinancement()
        planInitial.emprunts = montantEmprunt
        planInitial.capaciteDAutofinancement = - (coutFixeDebut + coutFixeFin + ((coutVarEntreprise * montantEmprunt) ))
        planInitial.save()
        def mensualite = montantEmprunt * (recurrent / (1-Math.pow((1+recurrent),(-duree))) )    
        
        def restantDu = montantEmprunt
        
        simulation.addToPlanDeFinancement(planInitial)
        def interetMois = 0
        def capital = 0
    
        def coutCredit = 0
        
        for(int i = 1; i<duree+1;i++) {
            def plan = new PlanDeFinancement(simulation : simulation, , mois : i)
            
            interetMois = Math.round((restantDu * recurrent))
            coutCredit = coutCredit + interetMois
            capital = Math.round((mensualite - interetMois)) 
            restantDu = Math.round((restantDu - capital))
            
            
            plan.remboursementCapitalDesEmprunts = capital + interetMois
            plan.save()
            simulation.addToPlanDeFinancement(plan)
                
        }
        
        
        
    }
}
