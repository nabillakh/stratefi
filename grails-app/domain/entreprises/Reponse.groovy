package entreprises

import stratefi.comparateur.*


class Reponse {
    
    Acteur acteur 
    
    Demande demande
    
    String texte
    Float taux
    Double montant
    
    Date date = new Date()
    
    static constraints = {
        acteur nullable : true
        texte nullable : true
        taux nullable : true
        montant nullable : true
    }
    
    static mappedBy = [demande : 'reponses']
}
