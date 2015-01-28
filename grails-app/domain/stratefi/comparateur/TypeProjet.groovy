package stratefi.comparateur

class TypeProjet {    
    
    static searchable = true
    
    String nom
    Double numero
    
    String nomSEO    
   // static hasMany = [produits : Produit]
    
    boolean publie
    
    static constraints = {
        //produits nullable : true
        nomSEO nullable : true, unique : true
    }
}
