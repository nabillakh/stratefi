package stratefi.comparateur

class Niche {
    
    
    String nom
    String description
    String keywords
    
    String titre
    String textePublie
    
    Boolean publie
    
    Secteur secteur
    TypeProduit typeProduit
    TypeProjet typeProjet
    
    
    static hasMany = [mixProduits : MixProduit]
    
    Double nombreJoue

    static constraints = {
        mixProduits nullable: true
        titre nullable: true
        keywords nullable: true
        textePublie nullable: true
        publie nullable: true
        nom nullable : true
        description nullable : true
        secteur nullable : true
        typeProduit nullable : true
        typeProjet nullable : true
        nombreJoue nullable : true
    }
    
}
