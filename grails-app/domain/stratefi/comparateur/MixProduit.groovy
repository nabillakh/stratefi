package stratefi.comparateur

class MixProduit {
    
    String nom
    String description
    
    Niche niche
    Produit produit

    static constraints = {
        nom nullable : true
        description nullable : true
    }    
    static mappedBy = [produit : 'mixProduits', niche : 'mixProduits']
}
