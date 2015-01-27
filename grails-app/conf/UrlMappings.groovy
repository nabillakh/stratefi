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
        name financementProjet: "/secteur/$id/$nom?" {
            controller = "acteur"
            action = "entrepriseCible"
        }
        name ficheProduit: "/financement/$id/$nom?" {
            controller = "acteur"
            action = "ficheProduit"
        }
        
        
        
        
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/" {
            controller = "comparateur"
            action = "listeFinancement"
        }
        "500"(view:'/error')
	}
}
