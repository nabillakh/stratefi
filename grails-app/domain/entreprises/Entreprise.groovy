package entreprises

import planification.*
import stratefi.comparateur.*

class Entreprise {

    String nom
    String siren
    String adresse
    String codePostal
    String ville
    String pays
    // ClasseNaf classe
    String descriptionActivite
//   

    Secteur secteur
    
    SortedSet demandes
    static hasMany = [demandes : Demande] 
   // static hasMany = [pic : Pic, demandes : Demande]   
//    
//    SortedSet mesLiasses
   // SortedSet pic
    
    static constraints = {
       demandes nullable : true
       secteur nullable : true
       descriptionActivite nullable : true
       siren nullable : true
       adresse nullable : true
       codePostal nullable : true
       ville nullable : true
       pays nullable : true
       
    }
//    
//    static mappedBy = [clients : 'fournisseur', fournisseurs : 'client']
    static mappedBy = [pic : 'entreprise', demandes : 'entreprise']
}
