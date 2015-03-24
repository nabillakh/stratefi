package connection



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import entreprises.*
import stratefi.*
import grails.plugins.springsecurity.Secured
import stratefi.comparateur.*

@Transactional(readOnly = false)
class UserController {

    def springSecurityService
    def comparateurService
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }
    
    def inscrire(User userInstance) {
        
        def user2 = User.findByUsername(userInstance.username)
        if(user2) {
            userInstance = user2
            redirect(action: 'auth', controller : 'login')
        }
        else {
            userInstance.save(failOnError : true) 
             def userRole = Authority.findByAuthority('ROLE_USER') ?: new Authority(authority: 'ROLE_USER').save(flush: true)
               UserAuthority.create(userInstance, userRole, true)
            userInstance.save()          
        redirect(action: 'auth', controller : 'login')
        }
        
        
    }    

@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def show(User userInstance) {
        def etatList = Etat.list()
         [userInstance : userInstance, etatList : etatList]
    }
    
@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def profilEntreprise() {
        def userInstance = User.get(springSecurityService.principal.id)
        def etatList = Etat.list()
         [userInstance : userInstance, etatList : etatList]        
    }
    
    
@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def analyseFi() {
        def formulaireInstance = new Formulaire()
        
        def userInstance = comparateurService.initUser() 
        
        formulaireInstance = comparateurService.initFormulaire(userInstance)
        
        
        [formulaireInstance : formulaireInstance]
    }
    
    def nouvelleDemande() {
        def formulaireInstance = new Formulaire()
        
        def userInstance = comparateurService.initUser() 
        
        formulaireInstance = comparateurService.initFormulaire(userInstance)
        
        println("dans nv demande")
        println(formulaireInstance?.secteur?.nom)
        
        [formulaireInstance : formulaireInstance]
        
//        def demandeInstance = new Demande()
//        if(Demande.get(params.demandeInstanceId)) {
//            demandeInstance = Demande.get(params.demandeInstanceId)
//        }
//        else {
//            def userInstance = User.get(springSecurityService.principal.id)
//            demandeInstance.user = userInstance
//            demandeInstance.montantRecherche = 0
//            demandeInstance.publie = false
//        }
//        
//        if(!demandeInstance.user.entreprise){
//            demandeInstance.user.entreprise = new Entreprise().save()
//        }
//        demandeInstance.entreprise = demandeInstance.user.entreprise
//        if(!demandeInstance.entreprise.gestionActif) {
//            demandeInstance.entreprise.gestionActif = new GestionActif(entreprise : demandeInstance.entreprise).save()
//        }
//        if(!demandeInstance.entreprise.businessModel) {
//            demandeInstance.entreprise.businessModel = new BusinessModel(entreprise : demandeInstance.entreprise).save()
//        }       
//        
//        [demandeInstance : demandeInstance]
    }
    
@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def saveDemande(Demande demandeInstance) {
        def userInstance = User.get(springSecurityService.principal.id)
        demandeInstance.entreprise = userInstance.entreprise
        demandeInstance.user = userInstance
        demandeInstance.publie = false
        if(demandeInstance.montantRecherche == null) {
            demandeInstance.montantRecherche = 0
        }
        if (demandeInstance == null) {
            notFound()
            return
        }

        if (demandeInstance.hasErrors()) {
            respond demandeInstance.errors, view:'nouvelleDemande'
            return
        }
        demandeInstance.save flush:true
               
        
        redirect(action: 'nouvelleDemande', params : ['demandeInstanceId' : demandeInstance.id])
    }
    
@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def editionCompte() {
        def userInstance = comparateurService.initUser()
        
        def entrepriseInstance = new Entreprise()
        
        if(userInstance.entreprise) {
            entrepriseInstance = userInstance.entreprise
        }
        [entrepriseInstance : entrepriseInstance, userInstance : userInstance]
    }
    
    
    def publier(Demande demandeInstance) {
        println("publier")
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userInstance.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }
    
    def demandeFinancement(User userInstance) {
        def demandeInstance = new Demande() 
        demandeInstance.user = userInstance
        if(userInstance.entreprise) {
            demandeInstance.entreprise = userInstance.entreprise
        }
        [demandeInstance : demandeInstance, userInstance : userInstance]
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userInstance.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    
    
    
    def accueil() {
        println("le tdb est : " + params.userInstance)
        
        def compteInstance = User.get(Long.parseLong(params.userInstance))
        if(compteInstance.entreprise) {
//            if(compteInstance.entreprise.mesLiasses) {
//                redirect action: 'tableauDeBord', controller: 'user', params: params
//            }
//            else {
//                // redirect action: 'tableauDeBord', controller: 'compte', params: params
//            }
        }
        
        
    }
    
    
    
    
    def analyseFinanciere() {
        println("le compte est : " + params.compteInstance)
        
        def compteInstance = User.get(Long.parseLong(params.compteInstance))
        def entrepriseInstance = compteInstance.entreprise
        
        
        println(compteInstance)
        
        // def entrepriseInstance = Entreprise.get(Long.parseLong(params.entrepriseInstance))
        
        [entrepriseInstance : entrepriseInstance]
        
    }
    
    
    def tableauDeBord() {
        println("le tdb est : " + params.compteInstance)
        
        def compteInstance = User.get(Long.parseLong(params.compteInstance))
        def entrepriseInstance = compteInstance.entreprise
        
        
        println(compteInstance)
        
        // def entrepriseInstance = Entreprise.get(Long.parseLong(params.entrepriseInstance))
        
        [entrepriseInstance : entrepriseInstance]
        
    }
    
    def general() {
        println("le general est : " + params.compteInstance)
        
        def compteInstance = User.get(Long.parseLong(params.compteInstance))
        def entrepriseInstance = compteInstance.entreprise
        
        
        println(compteInstance)
        
        // def entrepriseInstance = Entreprise.get(Long.parseLong(params.entrepriseInstance))
        
        [entrepriseInstance : entrepriseInstance]
        
    }
    
    
    
    
}
