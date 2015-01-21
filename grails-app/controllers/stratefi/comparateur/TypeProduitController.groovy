package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TypeProduitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TypeProduit.list(params), model:[typeProduitInstanceCount: TypeProduit.count()]
    }

    def show(TypeProduit typeProduitInstance) {
        respond typeProduitInstance
    }

    def create() {
        respond new TypeProduit(params)
    }

    @Transactional
    def save(TypeProduit typeProduitInstance) {
        if (typeProduitInstance == null) {
            notFound()
            return
        }

        if (typeProduitInstance.hasErrors()) {
            respond typeProduitInstance.errors, view:'create'
            return
        }

        typeProduitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'typeProduitInstance.label', default: 'TypeProduit'), typeProduitInstance.id])
                redirect typeProduitInstance
            }
            '*' { respond typeProduitInstance, [status: CREATED] }
        }
    }

    def edit(TypeProduit typeProduitInstance) {
        respond typeProduitInstance
    }

    @Transactional
    def update(TypeProduit typeProduitInstance) {
        if (typeProduitInstance == null) {
            notFound()
            return
        }

        if (typeProduitInstance.hasErrors()) {
            respond typeProduitInstance.errors, view:'edit'
            return
        }

        typeProduitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TypeProduit.label', default: 'TypeProduit'), typeProduitInstance.id])
                redirect typeProduitInstance
            }
            '*'{ respond typeProduitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TypeProduit typeProduitInstance) {

        if (typeProduitInstance == null) {
            notFound()
            return
        }

        typeProduitInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TypeProduit.label', default: 'TypeProduit'), typeProduitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'typeProduitInstance.label', default: 'TypeProduit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
