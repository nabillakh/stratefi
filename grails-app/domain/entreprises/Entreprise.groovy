package entreprises

import planification.*

class Entreprise {

    String nom
    String siren
    String adresse
    String codePostal
    String ville
    String pays
    // ClasseNaf classe
    String secteur
    String descriptionActivite
//    
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
