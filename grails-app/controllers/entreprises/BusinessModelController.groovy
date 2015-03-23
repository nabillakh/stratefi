package entreprises



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BusinessModelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BusinessModel.list(params), model:[businessModelInstanceCount: BusinessModel.count()]
    }

    def show(BusinessModel businessModelInstance) {
        respond businessModelInstance
    }

    def create() {
        respond new BusinessModel(params)
    }

    @Transactional
    def save(BusinessModel businessModelInstance) {
        if (businessModelInstance == null) {
            notFound()
            return
        }

        if (businessModelInstance.hasErrors()) {
            respond businessModelInstance.errors, view:'create'
            return
        }

        businessModelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'businessModelInstance.label', default: 'BusinessModel'), businessModelInstance.id])
                redirect businessModelInstance
            }
            '*' { respond businessModelInstance, [status: CREATED] }
        }
    }

    def edit(BusinessModel businessModelInstance) {
        respond businessModelInstance
    }

    @Transactional
    def update(BusinessModel businessModelInstance) {
        if (businessModelInstance == null) {
            notFound()
            return
        }

        if (businessModelInstance.hasErrors()) {
            respond businessModelInstance.errors, view:'edit'
            return
        }

        businessModelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BusinessModel.label', default: 'BusinessModel'), businessModelInstance.id])
                redirect businessModelInstance
            }
            '*'{ respond businessModelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BusinessModel businessModelInstance) {

        if (businessModelInstance == null) {
            notFound()
            return
        }

        businessModelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BusinessModel.label', default: 'BusinessModel'), businessModelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'businessModelInstance.label', default: 'BusinessModel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
