package stratefi.comparateur

class TypeProduit {
    
    static searchable = true
    
    String nom
    // String description
    Double numero
    
    static hasMany = [produits : Produit]

    String nomSEO
    
    static constraints = {
        produits nullable : true
        nomSEO nullable : true, unique : true
    }
}
