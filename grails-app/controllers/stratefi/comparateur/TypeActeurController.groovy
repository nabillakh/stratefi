package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TypeActeurController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TypeActeur.list(params), model:[typeActeurInstanceCount: TypeActeur.count()]
    }

    def show(TypeActeur typeActeurInstance) {
        respond typeActeurInstance
    }

    def create() {
        respond new TypeActeur(params)
    }

    @Transactional
    def save(TypeActeur typeActeurInstance) {
        if (typeActeurInstance == null) {
            notFound()
            return
        }

        if (typeActeurInstance.hasErrors()) {
            respond typeActeurInstance.errors, view:'create'
            return
        }

        typeActeurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'typeActeurInstance.label', default: 'TypeActeur'), typeActeurInstance.id])
                redirect typeActeurInstance
            }
            '*' { respond typeActeurInstance, [status: CREATED] }
        }
    }

    def edit(TypeActeur typeActeurInstance) {
        respond typeActeurInstance
    }

    @Transactional
    def update(TypeActeur typeActeurInstance) {
        if (typeActeurInstance == null) {
            notFound()
            return
        }

        if (typeActeurInstance.hasErrors()) {
            respond typeActeurInstance.errors, view:'edit'
            return
        }

        typeActeurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TypeActeur.label', default: 'TypeActeur'), typeActeurInstance.id])
                redirect typeActeurInstance
            }
            '*'{ respond typeActeurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TypeActeur typeActeurInstance) {

        if (typeActeurInstance == null) {
            notFound()
            return
        }

        typeActeurInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TypeActeur.label', default: 'TypeActeur'), typeActeurInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'typeActeurInstance.label', default: 'TypeActeur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
