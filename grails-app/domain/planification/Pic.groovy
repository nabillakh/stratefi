package planification

import entreprises.*

class Pic   implements Comparable {

    Integer annee
    Entreprise entreprise
       
    static hasMany = [pdp : Pdp]

    SortedSet pdp
    
    
    static constraints = {      
        entreprise nullable : true   
        pdp  nullable : true    
    }
    
    
    int compareTo(obj) {
       annee.compareTo(obj.annee)
   }
}
