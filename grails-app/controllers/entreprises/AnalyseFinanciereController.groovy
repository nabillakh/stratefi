package entreprises



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AnalyseFinanciereController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AnalyseFinanciere.list(params), model:[analyseFinanciereInstanceCount: AnalyseFinanciere.count()]
    }

    def show(AnalyseFinanciere analyseFinanciereInstance) {
        respond analyseFinanciereInstance
    }

    def create() {
        respond new AnalyseFinanciere(params)
    }

    @Transactional
    def save(AnalyseFinanciere analyseFinanciereInstance) {
        if (analyseFinanciereInstance == null) {
            notFound()
            return
        }

        if (analyseFinanciereInstance.hasErrors()) {
            respond analyseFinanciereInstance.errors, view:'create'
            return
        }

        analyseFinanciereInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'analyseFinanciereInstance.label', default: 'AnalyseFinanciere'), analyseFinanciereInstance.id])
                redirect analyseFinanciereInstance
            }
            '*' { respond analyseFinanciereInstance, [status: CREATED] }
        }
    }

    def edit(AnalyseFinanciere analyseFinanciereInstance) {
        respond analyseFinanciereInstance
    }

    @Transactional
    def update(AnalyseFinanciere analyseFinanciereInstance) {
        if (analyseFinanciereInstance == null) {
            notFound()
            return
        }

        if (analyseFinanciereInstance.hasErrors()) {
            respond analyseFinanciereInstance.errors, view:'edit'
            return
        }

        analyseFinanciereInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AnalyseFinanciere.label', default: 'AnalyseFinanciere'), analyseFinanciereInstance.id])
                redirect analyseFinanciereInstance
            }
            '*'{ respond analyseFinanciereInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AnalyseFinanciere analyseFinanciereInstance) {

        if (analyseFinanciereInstance == null) {
            notFound()
            return
        }

        analyseFinanciereInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AnalyseFinanciere.label', default: 'AnalyseFinanciere'), analyseFinanciereInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'analyseFinanciereInstance.label', default: 'AnalyseFinanciere'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
