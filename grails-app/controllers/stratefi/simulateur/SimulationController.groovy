package stratefi.simulateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SimulationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Simulation.list(params), model:[simulationInstanceCount: Simulation.count()]
    }

    def show(Simulation simulationInstance) {
        respond simulationInstance
    }

    def create() {
        respond new Simulation(params)
    }

    @Transactional
    def save(Simulation simulationInstance) {
        if (simulationInstance == null) {
            notFound()
            return
        }

        if (simulationInstance.hasErrors()) {
            respond simulationInstance.errors, view:'create'
            return
        }

        simulationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'simulationInstance.label', default: 'Simulation'), simulationInstance.id])
                redirect simulationInstance
            }
            '*' { respond simulationInstance, [status: CREATED] }
        }
    }

    def edit(Simulation simulationInstance) {
        respond simulationInstance
    }

    @Transactional
    def update(Simulation simulationInstance) {
        if (simulationInstance == null) {
            notFound()
            return
        }

        if (simulationInstance.hasErrors()) {
            respond simulationInstance.errors, view:'edit'
            return
        }

        simulationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Simulation.label', default: 'Simulation'), simulationInstance.id])
                redirect simulationInstance
            }
            '*'{ respond simulationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Simulation simulationInstance) {

        if (simulationInstance == null) {
            notFound()
            return
        }

        simulationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Simulation.label', default: 'Simulation'), simulationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'simulationInstance.label', default: 'Simulation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
