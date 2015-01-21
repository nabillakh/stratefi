package compte

import planification.*

class Apport extends Ligne {
    
    transient utilsService
    
    String associe
    Float pourcentage
    String typeApport
    
//    def Apport() {
//        this.indicateur = utilsService.rechercheIndicateur(101)
//    }

    static constraints = {
        pourcentage defaultValue: 0
        associe nullable : true
    }
}
