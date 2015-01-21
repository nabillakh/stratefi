package stratefi.comparateur



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Image.list(params), model:[imageInstanceCount: Image.count()]
    }

    def show(Image imageInstance) {
        respond imageInstance
    }

    def create() {
        respond new Image(params)
    }
    
    def createActeur() {
        def imageInstance = new Image(params)
        def acteurInstance = Acteur.get(params.id)
        imageInstance.acteur = acteurInstance
        [imageInstance : imageInstance]        
    }

    @Transactional
    def save(Image imageInstance) {
        imageInstance.save() //Create the record in DB by sending the needed Select command
        println(imageInstance)
        redirect(action: 'list')
    }
    @Transactional
    def saveActeur(Image imageInstance) {
        println(imageInstance)
        imageInstance.save(flush : true) //Create the record in DB by sending the needed Select command
        println("saveacteur : " + imageInstance)
        println("l'acteur : " + imageInstance.acteur)
        def acteurInstance = imageInstance.acteur
        acteurInstance.image = imageInstance
        acteurInstance.save(flush:true)
        
        println("l'image : " + acteurInstance.image)
        
        redirect action: "fiche", controller : "Acteur", ressource : acteurInstance
    }
    
    def showPayload(Acteur acteurInstance) {
        println("show pay load params : " + acteurInstance)
        def imageInstance = acteurInstance.image
        response.outputStream << imageInstance.filePayload // write the image to the outputstream
        response.outputStream.flush()
    }

    def edit(Image imageInstance) {
        respond imageInstance
    }

    @Transactional
    def update(Image imageInstance) {
        if (imageInstance == null) {
            notFound()
            return
        }

        if (imageInstance.hasErrors()) {
            respond imageInstance.errors, view:'edit'
            return
        }

        imageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Image.label', default: 'Image'), imageInstance.id])
                redirect imageInstance
            }
            '*'{ respond imageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Image imageInstance) {

        if (imageInstance == null) {
            notFound()
            return
        }

        imageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Image.label', default: 'Image'), imageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imageInstance.label', default: 'Image'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
