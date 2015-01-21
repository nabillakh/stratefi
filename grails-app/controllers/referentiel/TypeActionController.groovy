package referentiel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TypeActionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TypeAction.list(params), model:[typeActionInstanceCount: TypeAction.count()]
    }

    def show(TypeAction typeActionInstance) {
        respond typeActionInstance
    }

    def create() {
        respond new TypeAction(params)
    }

    @Transactional
    def save(TypeAction typeActionInstance) {
        if (typeActionInstance == null) {
            notFound()
            return
        }

        if (typeActionInstance.hasErrors()) {
            respond typeActionInstance.errors, view:'create'
            return
        }

        typeActionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'typeActionInstance.label', default: 'TypeAction'), typeActionInstance.id])
                redirect typeActionInstance
            }
            '*' { respond typeActionInstance, [status: CREATED] }
        }
    }

    def edit(TypeAction typeActionInstance) {
        respond typeActionInstance
    }

    @Transactional
    def update(TypeAction typeActionInstance) {
        if (typeActionInstance == null) {
            notFound()
            return
        }

        if (typeActionInstance.hasErrors()) {
            respond typeActionInstance.errors, view:'edit'
            return
        }

        typeActionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TypeAction.label', default: 'TypeAction'), typeActionInstance.id])
                redirect typeActionInstance
            }
            '*'{ respond typeActionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TypeAction typeActionInstance) {

        if (typeActionInstance == null) {
            notFound()
            return
        }

        typeActionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TypeAction.label', default: 'TypeAction'), typeActionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'typeActionInstance.label', default: 'TypeAction'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
