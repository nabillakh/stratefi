import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_emprunt_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/emprunt/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: empruntInstance, field: 'tauxAssurance', 'error'))
printHtmlPart(1)
invokeTag('message','g',5,['code':("emprunt.tauxAssurance.label"),'default':("Taux Assurance")],-1)
printHtmlPart(2)
invokeTag('field','g',8,['name':("tauxAssurance"),'value':(fieldValue(bean: empruntInstance, field: 'tauxAssurance'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: empruntInstance, field: 'nom', 'error'))
printHtmlPart(4)
invokeTag('message','g',14,['code':("emprunt.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',17,['name':("nom"),'value':(empruntInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: empruntInstance, field: 'montant', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("emprunt.montant.label"),'default':("Montant")],-1)
printHtmlPart(6)
invokeTag('field','g',26,['name':("montant"),'value':(fieldValue(bean: empruntInstance, field: 'montant')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: empruntInstance, field: 'nbMensualite', 'error'))
printHtmlPart(7)
invokeTag('message','g',32,['code':("emprunt.nbMensualite.label"),'default':("Nb Mensualite")],-1)
printHtmlPart(6)
invokeTag('field','g',35,['name':("nbMensualite"),'value':(fieldValue(bean: empruntInstance, field: 'nbMensualite')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: empruntInstance, field: 'tauxInteret', 'error'))
printHtmlPart(8)
invokeTag('message','g',41,['code':("emprunt.tauxInteret.label"),'default':("Taux Interet")],-1)
printHtmlPart(6)
invokeTag('field','g',44,['name':("tauxInteret"),'value':(fieldValue(bean: empruntInstance, field: 'tauxInteret')),'required':("")],-1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422394417077L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
