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

    BusinessModel businessModel
    GestionActif gestionActif
    
    Secteur secteur
    
    String toString(){
        return nom
    }
    
    SortedSet demandes
    static hasMany = [demandes : Demande, documents : Document] 
   // static hasMany = [pic : Pic, demandes : Demande]   
//    
//    SortedSet mesLiasses
   // SortedSet pic
    
    static constraints = {
       demandes nullable : true
        businessModel nullable : true
        gestionActif nullable : true
        secteur nullable : true
       descriptionActivite nullable : true
       documents nullable : true
       siren nullable : true
       adresse nullable : true
       codePostal nullable : true
       ville nullable : true
       pays nullable : true
       
    }
//    
//    static mappedBy = [clients : 'fournisseur', fournisseurs : 'client']
    static mappedBy = [pic : 'entreprise', demandes : 'entreprise', businessModel : 'entreprise', gestionActif : 'entreprise']
}
