package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NicheController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Niche.list(params), model:[formulaireInstanceCount: Niche.count()]
    }

    def show(Niche formulaireInstance) {
        respond formulaireInstance
    }

    def create() {
        respond new Niche(params)
    }

    @Transactional
    def save(Niche formulaireInstance) {
        if (formulaireInstance == null) {
            notFound()
            return
        }

        if (formulaireInstance.hasErrors()) {
            respond formulaireInstance.errors, view:'create'
            return
        }

        formulaireInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formulaireInstance.label', default: 'Niche'), formulaireInstance.id])
                redirect formulaireInstance
            }
            '*' { respond formulaireInstance, [status: CREATED] }
        }
    }

    def edit(Niche formulaireInstance) {
        respond formulaireInstance
    }

    @Transactional
    def update(Niche formulaireInstance) {
        if (formulaireInstance == null) {
            notFound()
            return
        }

        if (formulaireInstance.hasErrors()) {
            respond formulaireInstance.errors, view:'edit'
            return
        }

        formulaireInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Niche.label', default: 'Niche'), formulaireInstance.id])
                redirect formulaireInstance
            }
            '*'{ respond formulaireInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Niche formulaireInstance) {

        if (formulaireInstance == null) {
            notFound()
            return
        }

        formulaireInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Niche.label', default: 'Niche'), formulaireInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formulaireInstance.label', default: 'Niche'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
