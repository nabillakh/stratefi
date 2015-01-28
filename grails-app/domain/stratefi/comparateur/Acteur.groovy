package stratefi.comparateur

class Acteur {
        
    
    static searchable = true
    
    TypeActeur typeActeur
    
    String nom
    String description
    String url
    Double numero
    String facebook
    String googleplus
    String linkedin
    String twitter
    String slogan
    String contactMail
    
    // Double probabilite
    
    boolean publie
    
    static hasMany = [produits : Produit]
    
    Image image
    
    String nomSEO
        
    static constraints = {
        nom nullable : true
        nomSEO nullable : true, unique : true
        description nullable : true
        url nullable : true
        image nullable : true
        numero nullable : true
        typeActeur nullable : true
        produits nullable : true
        facebook nullable : true
        googleplus nullable : true
        linkedin nullable : true
        twitter nullable : true
        slogan nullable : true
        contactMail nullable : true
        }
        
    static mapping = {
        description sqlType:"text"
    }
    
    static mappedBy = [typeActeur : 'acteurs', image : 'acteur']
}
