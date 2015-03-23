package stratefi.comparateur

import referentiel.*

class Formulaire {

    
    String nom
    String description
    String keywords
    
    String titre
    String textePublie
    
    Boolean publie
        
    Double nombreJoue
        
    String nomProjet
    TypeProjet typeProjet
    TypeProduit typeProduit
    Double montantRecherche
    DureeBesoin dureeBesoin
    UrgenceBesoin urgenceBesoin
    
    String nomEntreprise
    String siren
    Secteur secteur
    
    ProprieteMachine proprieteMachine
    ProprieteLocaux proprieteLocaux
    
    CroissanceCa croissanceCa
    VolumeClient volumeClient
    CreanceClient creanceClient
    Marchandise marchandise
    
    
    String toString(){
        return nom
    }
    
    
    static constraints = {
        titre nullable: true
        keywords nullable: true
        textePublie nullable: true
        publie nullable: true
        typeProduit nullable: true
        nom nullable : true
        description nullable : true
        nombreJoue nullable : true
        nomProjet nullable : true
        typeProjet nullable : true
        montantRecherche nullable : true
        dureeBesoin nullable : true
        urgenceBesoin nullable : true
        nomEntreprise nullable : true
        siren nullable : true
        secteur nullable : true
        proprieteMachine nullable : true
        proprieteLocaux nullable : true
        croissanceCa nullable : true
        volumeClient nullable : true
        creanceClient nullable : true
        marchandise nullable : true
        
    }
}
