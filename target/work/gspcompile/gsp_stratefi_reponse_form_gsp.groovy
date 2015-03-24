import entreprises.Reponse
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_reponse_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/reponse/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'acteur', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("reponse.acteur.label"),'default':("Acteur")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("acteur"),'name':("acteur.id"),'from':(stratefi.comparateur.Acteur.list()),'optionKey':("id"),'value':(reponseInstance?.acteur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'texte', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("reponse.texte.label"),'default':("Texte")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("texte"),'value':(reponseInstance?.texte)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'taux', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("reponse.taux.label"),'default':("Taux")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("taux"),'value':(fieldValue(bean: reponseInstance, field: 'taux'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'montant', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("reponse.montant.label"),'default':("Montant")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("montant"),'value':(fieldValue(bean: reponseInstance, field: 'montant'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'commission', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("reponse.commission.label"),'default':("Commission")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("commission"),'value':(fieldValue(bean: reponseInstance, field: 'commission'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'date', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("reponse.date.label"),'default':("Date")],-1)
printHtmlPart(9)
invokeTag('datePicker','g',55,['name':("date"),'precision':("day"),'value':(reponseInstance?.date)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: reponseInstance, field: 'demande', 'error'))
printHtmlPart(10)
invokeTag('message','g',61,['code':("reponse.demande.label"),'default':("Demande")],-1)
printHtmlPart(9)
invokeTag('select','g',64,['id':("demande"),'name':("demande.id"),'from':(entreprises.Demande.list()),'optionKey':("id"),'required':(""),'value':(reponseInstance?.demande?.id),'class':("many-to-one")],-1)
printHtmlPart(11)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426434744567L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
