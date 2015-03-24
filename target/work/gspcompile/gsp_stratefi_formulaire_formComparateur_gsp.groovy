import stratefi.comparateur.Formulaire
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_formulaire_formComparateur_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/formulaire/_formComparateur.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createClosureForHtmlPart(2, 2)
invokeTag('select','g',21,['name':("typeProduit.id"),'class':("form-control populate"),'id':("e1"),'optionKey':("id"),'from':(stratefi.comparateur.TypeProduit.list()),'value':(formulaireInstance?.typeProduit?.id)],2)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'entreprise', 'error'))
printHtmlPart(4)
createClosureForHtmlPart(5, 2)
invokeTag('select','g',28,['name':("secteur.id"),'class':("form-control populate"),'id':("e1"),'optionKey':("id"),'from':(stratefi.comparateur.Secteur.list()),'value':(formulaireInstance?.secteur?.id)],2)
printHtmlPart(6)
createClosureForHtmlPart(7, 2)
invokeTag('select','g',38,['name':("typeProjet.id"),'class':("form-control populate"),'id':("e1"),'optionKey':("id"),'from':(stratefi.comparateur.TypeProjet.list()),'value':(formulaireInstance?.typeProjet?.nom)],2)
printHtmlPart(8)
invokeTag('submitButton','g',45,['name':("create"),'class':("btn btn-default btn-block "),'value':("Rechercher")],-1)
printHtmlPart(9)
})
invokeTag('form','g',48,['url':([resource:formulaireInstance, action:'resultat']),'class':("form-horizontal")],1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427124654224L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
