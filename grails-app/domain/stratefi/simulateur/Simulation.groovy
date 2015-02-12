package stratefi.simulateur

import  compte.*
import stratefi.comparateur.*

class Simulation {

    String nom
    
    TypeProduit typeProduit
    
    PlanDeFinancement planDeFinancement
    
    static constraints = {
        nom nullable : true
        typeProduit nullable : true
        planDeFinancement nullable : true
    }
}
