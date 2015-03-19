package stratefi.comparateur

import referentiel.*

class Formulaire {

    String nomProjet
    TypeProjet typeProjet
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
    
    
    static constraints = {
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
