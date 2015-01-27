package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NicheController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Niche.list(params), model:[nicheInstanceCount: Niche.count()]
    }

    def show(Niche nicheInstance) {
        respond nicheInstance
    }

    def create() {
        respond new Niche(params)
    }

    @Transactional
    def save(Niche nicheInstance) {
        if (nicheInstance == null) {
            notFound()
            return
        }

        if (nicheInstance.hasErrors()) {
            respond nicheInstance.errors, view:'create'
            return
        }

        nicheInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nicheInstance.label', default: 'Niche'), nicheInstance.id])
                redirect nicheInstance
            }
            '*' { respond nicheInstance, [status: CREATED] }
        }
    }

    def edit(Niche nicheInstance) {
        respond nicheInstance
    }

    @Transactional
    def update(Niche nicheInstance) {
        if (nicheInstance == null) {
            notFound()
            return
        }

        if (nicheInstance.hasErrors()) {
            respond nicheInstance.errors, view:'edit'
            return
        }

        nicheInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Niche.label', default: 'Niche'), nicheInstance.id])
                redirect nicheInstance
            }
            '*'{ respond nicheInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Niche nicheInstance) {

        if (nicheInstance == null) {
            notFound()
            return
        }

        nicheInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Niche.label', default: 'Niche'), nicheInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nicheInstance.label', default: 'Niche'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
