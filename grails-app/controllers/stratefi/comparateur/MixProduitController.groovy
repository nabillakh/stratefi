package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MixProduitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MixProduit.list(params), model:[mixProduitInstanceCount: MixProduit.count()]
    }

    def show(MixProduit mixProduitInstance) {
        respond mixProduitInstance
    }

    def create() {
        respond new MixProduit(params)
    }

    @Transactional
    def save(MixProduit mixProduitInstance) {
        if (mixProduitInstance == null) {
            notFound()
            return
        }

        if (mixProduitInstance.hasErrors()) {
            respond mixProduitInstance.errors, view:'create'
            return
        }

        mixProduitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mixProduitInstance.label', default: 'MixProduit'), mixProduitInstance.id])
                redirect mixProduitInstance
            }
            '*' { respond mixProduitInstance, [status: CREATED] }
        }
    }

    def edit(MixProduit mixProduitInstance) {
        respond mixProduitInstance
    }

    @Transactional
    def update(MixProduit mixProduitInstance) {
        if (mixProduitInstance == null) {
            notFound()
            return
        }

        if (mixProduitInstance.hasErrors()) {
            respond mixProduitInstance.errors, view:'edit'
            return
        }

        mixProduitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MixProduit.label', default: 'MixProduit'), mixProduitInstance.id])
                redirect mixProduitInstance
            }
            '*'{ respond mixProduitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MixProduit mixProduitInstance) {

        if (mixProduitInstance == null) {
            notFound()
            return
        }

        mixProduitInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MixProduit.label', default: 'MixProduit'), mixProduitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mixProduitInstance.label', default: 'MixProduit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
