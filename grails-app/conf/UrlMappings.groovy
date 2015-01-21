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
        name financementProjet: "/entreprise_cible/$id/$nom?" {
            controller = "acteur"
            action = "entrepriseCible"
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
