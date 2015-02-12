package compte



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlanDeFinancementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PlanDeFinancement.list(params), model:[planDeFinancementInstanceCount: PlanDeFinancement.count()]
    }

    def show(PlanDeFinancement planDeFinancementInstance) {
        respond planDeFinancementInstance
    }

    def create() {
        respond new PlanDeFinancement(params)
    }

    @Transactional
    def save(PlanDeFinancement planDeFinancementInstance) {
        if (planDeFinancementInstance == null) {
            notFound()
            return
        }

        if (planDeFinancementInstance.hasErrors()) {
            respond planDeFinancementInstance.errors, view:'create'
            return
        }

        planDeFinancementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'planDeFinancementInstance.label', default: 'PlanDeFinancement'), planDeFinancementInstance.id])
                redirect planDeFinancementInstance
            }
            '*' { respond planDeFinancementInstance, [status: CREATED] }
        }
    }

    def edit(PlanDeFinancement planDeFinancementInstance) {
        respond planDeFinancementInstance
    }

    @Transactional
    def update(PlanDeFinancement planDeFinancementInstance) {
        if (planDeFinancementInstance == null) {
            notFound()
            return
        }

        if (planDeFinancementInstance.hasErrors()) {
            respond planDeFinancementInstance.errors, view:'edit'
            return
        }

        planDeFinancementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlanDeFinancement.label', default: 'PlanDeFinancement'), planDeFinancementInstance.id])
                redirect planDeFinancementInstance
            }
            '*'{ respond planDeFinancementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlanDeFinancement planDeFinancementInstance) {

        if (planDeFinancementInstance == null) {
            notFound()
            return
        }

        planDeFinancementInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlanDeFinancement.label', default: 'PlanDeFinancement'), planDeFinancementInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'planDeFinancementInstance.label', default: 'PlanDeFinancement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
