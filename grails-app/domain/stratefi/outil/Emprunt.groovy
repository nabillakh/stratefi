package stratefi.outil

class Emprunt {
    
    String nom
    Float montant
    Float nbMensualite
    
    Float tauxInteret
    Float tauxAssurance
    

    static constraints = {
        tauxAssurance nullable : true
        nom nullable : true
    }
}
