package entreprises



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugins.springsecurity.Secured

@Transactional(readOnly = false)
class DemandeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

@Secured(['IS_AUTHENTICATED_REMEMBERED'])   
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Demande.list(params), model:[demandeInstanceCount: Demande.count()]
    }

    
@Secured(['IS_AUTHENTICATED_REMEMBERED'])    
    def show(Demande demandeInstance) {
        respond demandeInstance
    }

@Secured(['IS_AUTHENTICATED_REMEMBERED'])   
    def create() {
        respond new Demande(params)
    }

    @Transactional
    def save(Demande demandeInstance) {
        if (demandeInstance == null) {
            notFound()
            return
        }

        if (demandeInstance.hasErrors()) {
            respond demandeInstance.errors, view:'create'
            return
        }
        demandeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'demandeInstance.label', default: 'Demande'), demandeInstance.id])
                redirect demandeInstance
            }
            '*' { respond demandeInstance, [status: CREATED] }
        }
    }

@Secured(['IS_AUTHENTICATED_REMEMBERED'])   
    def edit(Demande demandeInstance) {
        respond demandeInstance
    }

    @Transactional
    def update(Demande demandeInstance) {
        if (demandeInstance == null) {
            notFound()
            return
        }

        if (demandeInstance.hasErrors()) {
            respond demandeInstance.errors, view:'edit'
            return
        }

        demandeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Demande.label', default: 'Demande'), demandeInstance.id])
                redirect demandeInstance
            }
            '*'{ respond demandeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Demande demandeInstance) {

        if (demandeInstance == null) {
            notFound()
            return
        }

        demandeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Demande.label', default: 'Demande'), demandeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'demandeInstance.label', default: 'Demande'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
