package stratefi.comparateur

class MixProduit {
    
    String nom
    String description
    
    Formulaire formulaire
    Produit produit

    String toString(){
        return nom
    }
    
    static constraints = {
        nom nullable : true
        description nullable : true
    }    
    static mappedBy = [produit : 'mixProduits', formulaire : 'mixProduits']
}
