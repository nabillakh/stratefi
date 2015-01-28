package stratefi.outil

class Emprunt {
    
    String nom
    Float montant
    Float nbMensualite
    
    Float tauxInteret
    Float tauxAssurance
    
    boolean publie = true

    static constraints = {
        tauxAssurance nullable : true
        nom nullable : true
    }
}
