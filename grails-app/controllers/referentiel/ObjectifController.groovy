package referentiel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ObjectifController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Objectif.list(params), model:[objectifInstanceCount: Objectif.count()]
    }

    def show(Objectif objectifInstance) {
        respond objectifInstance
    }

    def create() {
        respond new Objectif(params)
    }

    @Transactional
    def save(Objectif objectifInstance) {
        if (objectifInstance == null) {
            notFound()
            return
        }

        if (objectifInstance.hasErrors()) {
            respond objectifInstance.errors, view:'create'
            return
        }

        objectifInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'objectifInstance.label', default: 'Objectif'), objectifInstance.id])
                redirect objectifInstance
            }
            '*' { respond objectifInstance, [status: CREATED] }
        }
    }

    def edit(Objectif objectifInstance) {
        respond objectifInstance
    }

    @Transactional
    def update(Objectif objectifInstance) {
        if (objectifInstance == null) {
            notFound()
            return
        }

        if (objectifInstance.hasErrors()) {
            respond objectifInstance.errors, view:'edit'
            return
        }

        objectifInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Objectif.label', default: 'Objectif'), objectifInstance.id])
                redirect objectifInstance
            }
            '*'{ respond objectifInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Objectif objectifInstance) {

        if (objectifInstance == null) {
            notFound()
            return
        }

        objectifInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Objectif.label', default: 'Objectif'), objectifInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'objectifInstance.label', default: 'Objectif'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
