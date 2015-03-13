package entreprises



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DemandeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Demande.list(params), model:[demandeInstanceCount: Demande.count()]
    }

    def show(Demande demandeInstance) {
        def etatList = Etat.list()
        println(etatList)
         [demandeInstance : demandeInstance, etatList : etatList]
    }

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
