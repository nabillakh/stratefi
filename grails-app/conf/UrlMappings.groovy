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
        
        name thankyou : "/thank-you" {
            controller = "admin"
            action = "thankyou"
        }
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/" (view:'/index')
        "500"(view:'/error')
	}
}
