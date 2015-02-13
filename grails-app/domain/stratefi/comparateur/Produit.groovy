package stratefi.comparateur

import stratefi.simulateur.*

class Produit {
    
    static searchable = true
    
    String nom
    String description
    TypeProduit typeProduit
    
    static belongsTo = [acteur: Acteur]
    
    static hasMany = [typeProjet : TypeProjet, secteurs : Secteur, mixProduits : MixProduit]
    
    Float coutVarInvestisseurMin
    Float coutVarInvestisseurMax
    Float coutVarEntrepriseMin
    Float coutVarEntrepriseMax
    Float coutFixeDebut
    Float coutFixeFin
    
    Float montantMinimum
    Float montantMaximum 
    Float tempsMinimum
    Float tempsMaximum
    Float recurrentMin, recurrentMax
    
    boolean publie
    
    String montantPhrase, tauxPhrase
    
    Simulation simulation
    
    static constraints = {
        nom nullable: true
        mixProduits nullable: true
        description nullable: true
        typeProduit nullable: true
        coutVarInvestisseurMin nullable: true
        coutVarEntrepriseMin nullable: true
        coutVarEntrepriseMax nullable: true
        coutVarInvestisseurMax nullable : true
        coutFixeDebut nullable: true
        coutFixeFin nullable: true
        montantMinimum nullable: true
        montantMaximum nullable: true
        tempsMinimum nullable: true
        tempsMaximum nullable: true
        typeProjet nullable : true
        recurrentMax nullable : true
        recurrentMin nullable : true
        simulation nullable : true
    }
    
     
    static mapping = {
        description sqlType:"text"
    }
    
    static mappedBy = [acteur : 'produits', typeProduit : 'produits', simulation : 'produit']
} 
