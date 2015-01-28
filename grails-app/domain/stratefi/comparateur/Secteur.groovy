package stratefi.comparateur

class Secteur {
    
    static searchable = true
    
    String nom
    Double numero
    
    String nomSEO
    //    static hasMany = [produits : Produit]

    static constraints = {
        // produits nullable : true
        nomSEO nullable : true, unique : true        
    }
}
