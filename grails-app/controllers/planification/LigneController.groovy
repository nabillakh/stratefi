package planification



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LigneController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ligne.list(params), model:[ligneInstanceCount: Ligne.count()]
    }

    def show(Ligne ligneInstance) {
        respond ligneInstance
    }

    def create() {
        respond new Ligne(params)
    }

    @Transactional
    def save(Ligne ligneInstance) {
        if (ligneInstance == null) {
            notFound()
            return
        }

        if (ligneInstance.hasErrors()) {
            respond ligneInstance.errors, view:'create'
            return
        }

        ligneInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ligneInstance.label', default: 'Ligne'), ligneInstance.id])
                redirect ligneInstance
            }
            '*' { respond ligneInstance, [status: CREATED] }
        }
    }

    def edit(Ligne ligneInstance) {
        respond ligneInstance
    }

    @Transactional
    def update(Ligne ligneInstance) {
        if (ligneInstance == null) {
            notFound()
            return
        }

        if (ligneInstance.hasErrors()) {
            respond ligneInstance.errors, view:'edit'
            return
        }

        ligneInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ligne.label', default: 'Ligne'), ligneInstance.id])
                redirect ligneInstance
            }
            '*'{ respond ligneInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ligne ligneInstance) {

        if (ligneInstance == null) {
            notFound()
            return
        }

        ligneInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ligne.label', default: 'Ligne'), ligneInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ligneInstance.label', default: 'Ligne'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
