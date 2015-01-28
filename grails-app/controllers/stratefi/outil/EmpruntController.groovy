package stratefi.outil



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmpruntController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def amortissement() {
        
        def nom = params.nomEmprunt
        def duree = Float.parseFloat(params.duree)
        def montantEmprunt = Float.parseFloat(params.montantEmprunt)
        def interet = Float.parseFloat(params.interet) /12 /100
        def assurance = Float.parseFloat(params.assurance) / 100
        
        
        def empruntInstance = new Emprunt()
        empruntInstance.montant = montantEmprunt
        empruntInstance.nbMensualite  = duree
        empruntInstance.tauxInteret = Float.parseFloat(params.interet)
        empruntInstance.tauxAssurance = Float.parseFloat(params.assurance)


        def mensualite = montantEmprunt * (interet / (1-Math.pow((1+interet),(-duree))) )    
        def assuranceMois = Math.round(montantEmprunt *  assurance / duree)
        
        def restantDu = Math.round(montantEmprunt)
        def mensualitesCompletes = []
        def interetMois = 0
        def capital = 0
    
        def coutCredit = 0
        def coutAssurance = 0
        for(int i = 0; i<duree+1;i++) {
            def mensualiteComplete = new LinkedHashMap()
            mensualiteComplete.put("Mois", "Mois "+i)
            mensualiteComplete.put("capitalDu", restantDu)
            mensualiteComplete.put("interetMois", interetMois)
            mensualiteComplete.put("assurance", assuranceMois)
            mensualiteComplete.put("capital", capital)
            interetMois = Math.round((restantDu * interet))
            coutCredit = coutCredit + interetMois
            coutAssurance = coutAssurance + assuranceMois
            capital = Math.round((mensualite - interetMois)) 
            restantDu = Math.round((restantDu - capital))
            mensualitesCompletes << mensualiteComplete
        }
        montantEmprunt = Math.round(montantEmprunt)
        println(mensualitesCompletes)
        
        [empruntInstance : empruntInstance , mensualitesCompletes : mensualitesCompletes, montantEmprunt : montantEmprunt, coutAssurance : coutAssurance, coutCredit : coutCredit]
    }
    
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Emprunt.list(params), model:[empruntInstanceCount: Emprunt.count()]
    }

    def show(Emprunt empruntInstance) {
        respond empruntInstance
    }

    def create() {
        def empruntInstance = new Emprunt()
        empruntInstance.montant = 100000
        empruntInstance.nbMensualite  = 36
        empruntInstance.tauxInteret = 5.5
        empruntInstance.tauxAssurance = 1.2
        [empruntInstance : empruntInstance]
    }

    @Transactional
    def save(Emprunt empruntInstance) {
        if (empruntInstance == null) {
            notFound()
            return
        }

        if (empruntInstance.hasErrors()) {
            respond empruntInstance.errors, view:'create'
            return
        }

        empruntInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'empruntInstance.label', default: 'Emprunt'), empruntInstance.id])
                redirect empruntInstance
            }
            '*' { respond empruntInstance, [status: CREATED] }
        }
    }

    def edit(Emprunt empruntInstance) {
        respond empruntInstance
    }

    @Transactional
    def update(Emprunt empruntInstance) {
        if (empruntInstance == null) {
            notFound()
            return
        }

        if (empruntInstance.hasErrors()) {
            respond empruntInstance.errors, view:'edit'
            return
        }

        empruntInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Emprunt.label', default: 'Emprunt'), empruntInstance.id])
                redirect empruntInstance
            }
            '*'{ respond empruntInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Emprunt empruntInstance) {

        if (empruntInstance == null) {
            notFound()
            return
        }

        empruntInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Emprunt.label', default: 'Emprunt'), empruntInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'empruntInstance.label', default: 'Emprunt'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

}
