package connection



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import entreprises.*

@Transactional(readOnly = true)
class UserController {

    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }
    
    def inscrire(User userInstance) {
        println("dans inscription")
        def mail = userInstance.username
        def mdp = userInstance.password
        
        println(mail)
        println(mdp)
        
        
        userInstance.save(failOnError : true)
        
        def userRole = Authority.findByAuthority('ROLE_USER') ?: new Authority(authority: 'ROLE_USER').save(flush: true)
        UserAuthority.create(userInstance, userRole, true)
        userInstance.save()
        println()
        redirect(action: 'auth', controller : 'login')
        
    }    

    def show(User userInstance) {
        respond userInstance
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
