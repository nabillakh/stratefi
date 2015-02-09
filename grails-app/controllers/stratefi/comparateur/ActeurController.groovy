package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import stratefi.*

@Transactional(readOnly = true)
class ActeurController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    
    def comparateurService
    
    def index() {
        def acteurInstanceList = Acteur.list()
        def secteurs = Secteur.list()
        def typeProduit = TypeProduit.list()
        def typeProjet = TypeProjet.list()
        [acteurInstanceList : acteurInstanceList, secteurs : secteurs , typeProduit : typeProduit, typeProjet : typeProjet]
    }
    
    def financementProjet(TypeProjet type) {
        def acteurs = []
        def produits = Produit.findAll("from Produit c where :nicknames in elements(c.typeProjet)", [nicknames:type])
        produits.each() {prod ->
            acteurs.add(prod.acteur)
        }
        acteurs.unique()
        [type : type, acteurs : acteurs]
    }
    def entrepriseCible(Secteur secteur) {
        def acteurs = []
        def produits = Produit.findAll("from Produit c where :nicknames in elements(c.secteurs)", [nicknames:secteur])
        produits.each() {prod ->
            acteurs.add(prod.acteur)
        }
        acteurs.unique()
        [secteur : secteur, acteurs : acteurs]
    }
    def ficheProduit(TypeProduit type) {
        def produits = type.produits
        def acteurs = []
        produits.each() {prod ->
            acteurs.add(prod.acteur)
        }
        acteurs.unique()
        [type : type, acteurs : acteurs]
    }

    def show(Acteur acteurInstance) {
        respond acteurInstance
    }

    def fiche(Acteur acteurInstance) {
//        [book: Book.findBySanitizedTitle(acteurInstance.sanitizedTitle)]

        def concurrents = comparateurService.concurrentTypeActeur(acteurInstance)
        def typeProjets = []
        def perimetre = []
        acteurInstance.produits.each() {produit ->
            produit.typeProjet.each() {type -> 
                typeProjets.add(type)
            }
            produit.secteurs.each() {type -> 
                perimetre.add(type)
            }
        }
        perimetre.unique()
        typeProjets.unique()
        
        def typeProduits1 = TypeProduit.list()
        def secteurs1 = Secteur.list()
        def typesProjet1 = TypeProjet.list()
        
        [acteurInstance : acteurInstance, typesProjet1 : typesProjet1, secteurs1 : secteurs1, concurrents : concurrents, typeProjets : typeProjets, perimetre :perimetre, typeProduits1 : typeProduits1, ]
    }

    def create() {
        respond new Acteur(params)
    }

    @Transactional
    def save(Acteur acteurInstance) {
        if (acteurInstance == null) {
            notFound()
            return
        }

        if (acteurInstance.hasErrors()) {
            respond acteurInstance.errors, view:'create'
            return
        }

        acteurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'acteurInstance.label', default: 'Acteur'), acteurInstance.id])
                redirect acteurInstance
            }
            '*' { respond acteurInstance, [status: CREATED] }
        }
    }

    def edit(Acteur acteurInstance) {
        println("dans edit")
        respond acteurInstance
    }

    @Transactional
    def update(Acteur acteurInstance) {
        if (acteurInstance == null) {
            notFound()
            return
        }

        if (acteurInstance.hasErrors()) {
            respond acteurInstance.errors, view:'edit'
            return
        }

        acteurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Acteur.label', default: 'Acteur'), acteurInstance.id])
                redirect acteurInstance
            }
            '*'{ respond acteurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Acteur acteurInstance) {

        if (acteurInstance == null) {
            notFound()
            return
        }

        acteurInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Acteur.label', default: 'Acteur'), acteurInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'acteurInstance.label', default: 'Acteur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
