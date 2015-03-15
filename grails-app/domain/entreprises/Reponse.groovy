package entreprises

import stratefi.comparateur.*


class Reponse  implements Comparable  {
    
    Acteur acteur 
    
    Demande demande
    
    String texte
    Float taux
    Double commission
    Double montant
    
    Date date = new Date()
    
    static constraints = {
        acteur nullable : true
        texte nullable : true
        taux nullable : true
        montant nullable : true
        commission nullable : true
    }
    
    
    int compareTo(obj) {
       date.compareTo(obj.date)
   }
    
    static mappedBy = [demande : 'reponses']
}
