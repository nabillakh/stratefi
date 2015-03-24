package entreprises

import connection.*
import stratefi.simulateur.*
import stratefi.comparateur.*


class Demande  implements Comparable {
    
    Formulaire formulaire
    
    String nom
    User user 
    Entreprise entreprise
    
    // projet
    String description
    String urlSite
    String besoinMarche
    String disruption
    
    String toString(){
        return nom
    }
    
    Etat etat
    
    // aspect financeir
    Double montantRecherche
    
    Double tresorerieActuelle
    Double chargesMensuellesActuelles
    
    TypeProduit type
    TypeProjet typeProjet
    DureeBesoin dureeBesoin
    UrgenceBesoin urgenceBesoin
    
    // Doucument en plus
    
    SortedSet reponses
    static hasMany = [reponses : Reponse, documents : Document]
    
    Boolean publie
    Date date = new Date()

    static constraints = {
       // simulation nullable :true
        reponses nullable : true
        formulaire nullable : true
        dureeBesoin nullable : true
        urgenceBesoin  nullable : true
        typeProjet nullable : true
        nom nullable : true
        user  nullable : true
        entreprise nullable : true
        description nullable : true
        documents nullable : true
        urlSite nullable : true
        besoinMarche nullable : true
        type nullable : true
        disruption nullable : true
        montantRecherche nullable : true
        tresorerieActuelle nullable : true
        chargesMensuellesActuelles nullable : true
        etat nullable : true
        publie nullable : true
    }
    
    
    int compareTo(obj) {
       date.compareTo(obj.date)
   }
    
    static mappedBy = [etat : 'demandes']
}
