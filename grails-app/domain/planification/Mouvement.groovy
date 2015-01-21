package planification

class Mouvement {

    Pdp pdp
    Ligne ligne
    Double montant
//    Double volume
    
    
    static constraints = {
        pdp nullable : true
        ligne nullable : true
        montant nullable : true
//        volume nullable : true
    }
    
    static mappedBy = [ligne : 'mouvement']
}
