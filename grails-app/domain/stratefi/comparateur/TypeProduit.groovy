package stratefi.comparateur

class TypeProduit {
    
    String nom
    // String description
    Double numero
    
    static hasMany = [produits : Produit]

    String nomSEO
    
    static constraints = {
        produits nullable : true
    }
}
