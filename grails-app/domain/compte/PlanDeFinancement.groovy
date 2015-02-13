package compte
import stratefi.simulateur.*

class PlanDeFinancement   implements Comparable {

    Double mois
    Double annee
    
    Simulation simulation
    
    // vision emploir ressources
    // ressources
    Float capaciteDAutofinancement
    Float cessionDImmobilisations
    Float augmentationCapital
    Float subventions
    Float emprunts
    
    
    // emploi
    Float dividendesVerses
    Float investissements
    Float remboursementCapitalDesEmprunts
    Float variationDuBFRE
      
   
    PlanDeFinancement() {
        mois = 0
        annee = 0
        capaciteDAutofinancement = 0
        cessionDImmobilisations = 0
        augmentationCapital = 0
        subventions = 0
        emprunts = 0
        dividendesVerses = 0
        investissements = 0
        remboursementCapitalDesEmprunts = 0
        variationDuBFRE = 0
        
    }
    
    static constraints = {
        simulation nullable : true
        capaciteDAutofinancement nullable : true
        cessionDImmobilisations nullable : true
        augmentationCapital nullable : true
        subventions nullable : true
        emprunts nullable : true
        dividendesVerses nullable : true
        investissements nullable : true
        remboursementCapitalDesEmprunts nullable : true
        variationDuBFRE nullable : true
    }
    
    
    int compareTo(obj) {
       mois.compareTo(obj.mois)
   }
}
