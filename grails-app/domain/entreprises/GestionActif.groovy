package entreprises

import referentiel.*

class GestionActif {

    Entreprise entreprise
    
    
    ProprieteMachine proprieteMachine
    ProprieteLocaux proprieteLocaux
    
    static constraints = {
        proprieteMachine nullable : true
        proprieteLocaux nullable : true
        entreprise nullable : true
    }
}
