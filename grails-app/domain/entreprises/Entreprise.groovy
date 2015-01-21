package entreprises

import planification.*

class Entreprise {

    String nom
    String siren
    // ClasseNaf classe
    
//    
//   // static hasMany = [mesLiasses : Liasse, clients : Fournisseur, fournisseurs : Fournisseur, pic : PIC] 
    static hasMany = [pic : Pic]   
//    
//    SortedSet mesLiasses
    SortedSet pic
    
    static constraints = {
        // classe nullable : true
//       mesLiasses nullable : true
       pic nullable : true
//       produits nullable : true
       siren nullable : true
//       strategies nullable : true
//       clients nullable : true
//       fournisseurs nullable : true
    }
//    
//    static mappedBy = [clients : 'fournisseur', fournisseurs : 'client']
    static mappedBy = [pic : 'entreprise']
}
