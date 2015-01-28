package stratefi.comparateur

class Produit {
    
    static searchable = true
    
    String nom
    String description
    TypeProduit typeProduit
    
    static belongsTo = [acteur: Acteur]
    
    static hasMany = [typeProjet : TypeProjet, secteurs : Secteur, mixProduits : MixProduit]
    
    Float coutVarInvestisseur
    Float coutVarEntreprise
    Float coutFixeDebut
    Float coutFixeFin
    
    Float montantMinimum
    Float montantMaximum
    Float recurrent
    
    boolean publie

    static constraints = {
        nom nullable: true
        mixProduits nullable: true
        description nullable: true
        typeProduit nullable: true
        coutVarInvestisseur nullable: true
        coutVarEntreprise nullable: true
        coutFixeDebut nullable: true
        coutFixeFin nullable: true
        montantMinimum nullable: true
        montantMaximum nullable: true
        typeProjet nullable : true
    }
    
     
    static mapping = {
        description sqlType:"text"
    }
    
    static mappedBy = [acteur : 'produits', typeProduit : 'produits']
} 
