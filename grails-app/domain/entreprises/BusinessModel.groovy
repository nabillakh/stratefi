package entreprises

import referentiel.*

class BusinessModel {
    
    Entreprise entreprise

    CroissanceCa croissanceCa
    VolumeClient volumeClient 
    CreanceClient creanceClient 
    Marchandise marchandise 
    
    
    static constraints = {
        croissanceCa nullable : true
        volumeClient nullable : true
        creanceClient nullable : true
        marchandise nullable : true
        entreprise nullable : true
    }
}
