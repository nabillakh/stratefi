package stratefi.comparateur

class Produit {
    
    String nom
    String description
    TypeProduit typeProduit
    
    static belongsTo = [acteur: Acteur]
    
    static hasMany = [typeProjet : TypeProjet, secteurs : Secteur]
    
    Float coutVarInvestisseur
    Float coutVarEntreprise
    Float coutFixeDebut
    Float coutFixeFin
    
    Float montantMinimum
    Float montantMaximum
    Float recurrent
    

    static constraints = {
        nom nullable: true
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