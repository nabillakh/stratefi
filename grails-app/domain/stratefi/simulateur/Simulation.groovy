package stratefi.simulateur

import  compte.*
import stratefi.comparateur.*

class Simulation {

    String nom
    
    Produit produit
    
    
    Float coutVarInvestisseur
    Float coutVarEntreprise
    Float coutFixeDebut
    Float coutFixeFin
    
    Float montant 
    Float temps
    Float recurrent
    
    static hasMany = [planDeFinancement : PlanDeFinancement ]
    SortedSet planDeFinancement
    
    Simulation() {
        coutVarInvestisseur =0
        coutVarEntreprise =0
        coutFixeDebut =0
        coutFixeFin =0
        montant  =0
        temps =0
        recurrent =0
        }
    
    static constraints = {
        nom nullable : true
        produit nullable : true
        planDeFinancement nullable : true
        coutVarInvestisseur nullable : true
        coutVarEntreprise nullable : true
        coutFixeDebut nullable : true
        coutFixeFin nullable : true
        montant  nullable : true
        temps nullable : true
        recurrent nullable : true
        
    }
    static mappedBy = [planDeFinancement : 'simulation']
    
}
