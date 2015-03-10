package entreprises



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EntrepriseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Entreprise.list(params), model:[entrepriseInstanceCount: Entreprise.count()]
    }

    def show(Entreprise entrepriseInstance) {
        respond entrepriseInstance
    }

    def create() {
        respond new Entreprise(params)
    }

    @Transactional
    def save(Entreprise entrepriseInstance) {
        if (entrepriseInstance == null) {
            notFound()
            return
        }

        if (entrepriseInstance.hasErrors()) {
            respond entrepriseInstance.errors, view:'create'
            return
        }

        entrepriseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'entrepriseInstance.label', default: 'Entreprise'), entrepriseInstance.id])
                redirect entrepriseInstance
            }
            '*' { respond entrepriseInstance, [status: CREATED] }
        }
    }

    def edit(Entreprise entrepriseInstance) {
        respond entrepriseInstance
    }

    @Transactional
    def update(Entreprise entrepriseInstance) {
        if (entrepriseInstance == null) {
            notFound()
            return
        }

        if (entrepriseInstance.hasErrors()) {
            respond entrepriseInstance.errors, view:'edit'
            return
        }

        entrepriseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Entreprise.label', default: 'Entreprise'), entrepriseInstance.id])
                redirect entrepriseInstance
            }
            '*'{ respond entrepriseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Entreprise entrepriseInstance) {

        if (entrepriseInstance == null) {
            notFound()
            return
        }

        entrepriseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Entreprise.label', default: 'Entreprise'), entrepriseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'entrepriseInstance.label', default: 'Entreprise'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
