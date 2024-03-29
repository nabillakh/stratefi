class UrlMappings {

	static mappings = {
            
        name fiche: "/fiche/$id/$nom?" {
            controller = "acteur"
            action = "fiche"
        }
        name financementProjet: "/financement_projet/$id/$nom?" {
            controller = "acteur"
            action = "financementProjet"
        }
        name secteur: "/secteur/$id/$nom?" {
            controller = "acteur"
            action = "entrepriseCible"
        }
        name ficheProduit: "/financement/$id/$nom?" {
            controller = "acteur"
            action = "ficheProduit"
        }
        name comparateur: "/comparateur/financement" {
            controller = "comparateur"
            action = "index"
        }
        name thankyou : "/thank-you" {
            controller = "admin"
            action = "thankyou"
        }
        name simulateur : "/simulation_credit" {
            controller = "emprunt"
            action = "create"
        }
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        
        "/"(view:"/index")
//        
//        "/" {
//            controller = "comparateur"
//            // action = "listeFinancement"
//            action = "index"
//        }
//        
        "500"(view:'/error')
	}
}
