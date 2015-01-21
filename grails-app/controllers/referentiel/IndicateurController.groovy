package referentiel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IndicateurController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Indicateur.list(params), model:[indicateurInstanceCount: Indicateur.count()]
    }

    def show(Indicateur indicateurInstance) {
        respond indicateurInstance
    }

    def create() {
        respond new Indicateur(params)
    }

    @Transactional
    def save(Indicateur indicateurInstance) {
        if (indicateurInstance == null) {
            notFound()
            return
        }

        if (indicateurInstance.hasErrors()) {
            respond indicateurInstance.errors, view:'create'
            return
        }

        indicateurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'indicateurInstance.label', default: 'Indicateur'), indicateurInstance.id])
                redirect indicateurInstance
            }
            '*' { respond indicateurInstance, [status: CREATED] }
        }
    }

    def edit(Indicateur indicateurInstance) {
        respond indicateurInstance
    }

    @Transactional
    def update(Indicateur indicateurInstance) {
        if (indicateurInstance == null) {
            notFound()
            return
        }

        if (indicateurInstance.hasErrors()) {
            respond indicateurInstance.errors, view:'edit'
            return
        }

        indicateurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Indicateur.label', default: 'Indicateur'), indicateurInstance.id])
                redirect indicateurInstance
            }
            '*'{ respond indicateurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Indicateur indicateurInstance) {

        if (indicateurInstance == null) {
            notFound()
            return
        }

        indicateurInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Indicateur.label', default: 'Indicateur'), indicateurInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'indicateurInstance.label', default: 'Indicateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
