package entreprises

import connection.*
import stratefi.simulateur.*
import stratefi.comparateur.*


class Demande  implements Comparable {
    
    String nom
    User user 
    Entreprise entreprise
    
    // projet
    String description
    String urlSite
    String besoinMarche
    String disruption
    
    Etat etat
    
    // aspect financeir
    Double montantRecherche
    Double tresorerieActuelle
    Double chargesMensuellesActuelles
    
    TypeProduit type
    
    // Doucument en plus
    
    SortedSet reponses
    static hasMany = [reponses : Reponse]
    
    Boolean publie
    Date date = new Date()

    static constraints = {
       // simulation nullable :true
        reponses nullable : true
        nom nullable : true
        user  nullable : true
        entreprise nullable : true
        description nullable : true
        urlSite nullable : true
        besoinMarche nullable : true
        type nullable : true
        disruption nullable : true
        montantRecherche nullable : true
        tresorerieActuelle nullable : true
        chargesMensuellesActuelles nullable : true
        etat nullable : true
    }
    
    
    int compareTo(obj) {
       date.compareTo(obj.date)
   }
    
    static mappedBy = [etat : 'demandes']
}
