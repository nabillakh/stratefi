package entreprises

import stratefi.comparateur.*


class Reponse {
    
    Acteur acteur 
    
    Demande demande
    
    String texte
    Float taux
    
    Date date = new Date()
    
    static constraints = {
        acteur nullable : true
        texte nullable : true
        taux nullable : true
        
    }
    
    static mappedBy = [demande : 'reponses']
}
