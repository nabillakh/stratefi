package planification

class Pdp   implements Comparable {

    Integer mois
    Pic pic
   // Ligne ligne
   
    static hasMany = [mouvement : Mouvement]
    
    static constraints = {
        mouvement nullable : true
    }
    
    
    int compareTo(obj) {
       mois.compareTo(obj.mois)
   }
    static mappedBy = [pic : 'pdp', mouvement : 'pdp']
}
