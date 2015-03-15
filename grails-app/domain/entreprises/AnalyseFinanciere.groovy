package entreprises

import connection.*

class AnalyseFinanciere {

    String nom
    String siren
    String mail
    
    Date date = new Date()
    
    Entreprise entreprise 
    User user
    
    static constraints = {
        entreprise nullable : true
        user nullable : true
    }
}
