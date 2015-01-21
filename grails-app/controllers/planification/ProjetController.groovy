package planification



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjetController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Projet.list(params), model:[projetInstanceCount: Projet.count()]
    }

    def show(Projet projetInstance) {
        respond projetInstance
    }

    def create() {
        respond new Projet(params)
    }

    @Transactional
    def save(Projet projetInstance) {
        if (projetInstance == null) {
            notFound()
            return
        }

        if (projetInstance.hasErrors()) {
            respond projetInstance.errors, view:'create'
            return
        }

        projetInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'projetInstance.label', default: 'Projet'), projetInstance.id])
                redirect projetInstance
            }
            '*' { respond projetInstance, [status: CREATED] }
        }
    }

    def edit(Projet projetInstance) {
        respond projetInstance
    }

    @Transactional
    def update(Projet projetInstance) {
        if (projetInstance == null) {
            notFound()
            return
        }

        if (projetInstance.hasErrors()) {
            respond projetInstance.errors, view:'edit'
            return
        }

        projetInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Projet.label', default: 'Projet'), projetInstance.id])
                redirect projetInstance
            }
            '*'{ respond projetInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Projet projetInstance) {

        if (projetInstance == null) {
            notFound()
            return
        }

        projetInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Projet.label', default: 'Projet'), projetInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'projetInstance.label', default: 'Projet'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
