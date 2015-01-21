package stratefi

import stratefi.comparateur.*

class ComparateurController {

    def index() { }
    
    def listeFinancement() {
        
        def acteurInstanceList = Acteur.list()
        def secteurs = Secteur.list()
        def typeProduit = TypeProduit.list()
        def typeProjet = TypeProjet.list()
        [acteurInstanceList : acteurInstanceList, secteurs : secteurs , typeProduit : typeProduit, typeProjet : typeProjet]
    }
    
    
}
