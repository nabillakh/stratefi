package stratefi

import grails.transaction.Transactional
import referentiel.*

@Transactional
class UtilsService {

    def rechercheIndicateur(Double numero) {
        def indicateur = new Indicateur()
        if(Indicateur.findByNumero(numero)) {
            indicateur = Indicateur.findByNumero(numero)
        }
        return indicateur
    }
    
    
}
