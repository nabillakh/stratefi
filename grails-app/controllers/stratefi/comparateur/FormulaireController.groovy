package stratefi.comparateur

import stratefi.*


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FormulaireController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    
    
def comparateurService
    
    @Transactional
    def resultat(Formulaire formulaireInstance) {   
        
        formulaireInstance = comparateurService.rechercheFormulaire(formulaireInstance)
        formulaireInstance.save()        
        def acteurs = comparateurService.rechercheActeurs(formulaireInstance)
        
        
        
        [acteurs : acteurs, formulaireInstance : formulaireInstance]   
    }
    
    def formulaire(Formulaire formulaire) {
        def formulaireInstance = comparateurService.storeFormulaire(formulaire)
        
        def demandeInstance = comparateurService.demandeFormulaire(formulaire)
        
        
        redirect(controller:"user", action:"profilEntreprise")
        
    }
    
    
    def demandeAnalyseFi(Formulaire formulaire) {
        def formulaireInstance = comparateurService.storeFormulaire(formulaire)
        
        redirect(controller:"user", action:"profilEntreprise")
        
    }
    
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Formulaire.list(params), model:[formulaireInstanceCount: Formulaire.count()]
    }

    def show(Formulaire formulaireInstance) {
        respond formulaireInstance
    }

    def create() {
        respond new Formulaire(params)
    }

    @Transactional
    def save(Formulaire formulaireInstance) {
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
                flash.message = message(code: 'default.created.message', args: [message(code: 'formulaireInstance.label', default: 'Formulaire'), formulaireInstance.id])
                redirect formulaireInstance
            }
            '*' { respond formulaireInstance, [status: CREATED] }
        }
    }

    def edit(Formulaire formulaireInstance) {
        respond formulaireInstance
    }

    @Transactional
    def update(Formulaire formulaireInstance) {
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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Formulaire.label', default: 'Formulaire'), formulaireInstance.id])
                redirect formulaireInstance
            }
            '*'{ respond formulaireInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Formulaire formulaireInstance) {

        if (formulaireInstance == null) {
            notFound()
            return
        }

        formulaireInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Formulaire.label', default: 'Formulaire'), formulaireInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formulaireInstance.label', default: 'Formulaire'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
