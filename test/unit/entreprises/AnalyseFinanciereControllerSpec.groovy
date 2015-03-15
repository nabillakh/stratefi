package entreprises



import grails.test.mixin.*
import spock.lang.*

@TestFor(AnalyseFinanciereController)
@Mock(AnalyseFinanciere)
class AnalyseFinanciereControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.analyseFinanciereInstanceList
            model.analyseFinanciereInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.analyseFinanciereInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def analyseFinanciere = new AnalyseFinanciere()
            analyseFinanciere.validate()
            controller.save(analyseFinanciere)

        then:"The create view is rendered again with the correct model"
            model.analyseFinanciereInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            analyseFinanciere = new AnalyseFinanciere(params)

            controller.save(analyseFinanciere)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/analyseFinanciere/show/1'
            controller.flash.message != null
            AnalyseFinanciere.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def analyseFinanciere = new AnalyseFinanciere(params)
            controller.show(analyseFinanciere)

        then:"A model is populated containing the domain instance"
            model.analyseFinanciereInstance == analyseFinanciere
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def analyseFinanciere = new AnalyseFinanciere(params)
            controller.edit(analyseFinanciere)

        then:"A model is populated containing the domain instance"
            model.analyseFinanciereInstance == analyseFinanciere
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/analyseFinanciere/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def analyseFinanciere = new AnalyseFinanciere()
            analyseFinanciere.validate()
            controller.update(analyseFinanciere)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.analyseFinanciereInstance == analyseFinanciere

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            analyseFinanciere = new AnalyseFinanciere(params).save(flush: true)
            controller.update(analyseFinanciere)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/analyseFinanciere/show/$analyseFinanciere.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/analyseFinanciere/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def analyseFinanciere = new AnalyseFinanciere(params).save(flush: true)

        then:"It exists"
            AnalyseFinanciere.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(analyseFinanciere)

        then:"The instance is deleted"
            AnalyseFinanciere.count() == 0
            response.redirectedUrl == '/analyseFinanciere/index'
            flash.message != null
    }
}
