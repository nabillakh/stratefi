package stratefi.comparateur

import stratefi.simulateur.*
import referentiel.*

class Produit {
    
    static searchable = true
    
    String nom
    String description
    TypeProduit typeProduit
    
    static belongsTo = [acteur: Acteur]
    
    static hasMany = [typeProjet : TypeProjet, secteurs : Secteur, mixProduits : MixProduit, 
    urgenceBesoin : UrgenceBesoin, dureeBesoin : DureeBesoin, proprieteLocaux : ProprieteLocaux, 
    marchandise : Marchandise, croissanceCa : CroissanceCa, creanceClient : CreanceClient, volumeClient : VolumeClient,
    proprieteMachine : ProprieteMachine]
    
    
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
    
    String toString(){
        return nom
    }
    
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
        urgenceBesoin nullable : true
        dureeBesoin nullable : true
        proprieteLocaux nullable : true
        marchandise nullable : true
        croissanceCa nullable : true
        creanceClient nullable : true
        volumeClient nullable : true
        proprieteMachine nullable : true
        
    }
    
    
     
    static mapping = {
        description sqlType:"text"
    }
    
    static mappedBy = [acteur : 'produits', typeProduit : 'produits', simulation : 'produit']
} 
