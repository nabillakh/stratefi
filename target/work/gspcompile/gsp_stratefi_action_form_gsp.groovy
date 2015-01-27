import planification.Action
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_action_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/action/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: actionInstance, field: 'type', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("action.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("type"),'name':("type.id"),'from':(referentiel.TypeAction.list()),'optionKey':("id"),'value':(actionInstance?.type?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: actionInstance, field: 'description', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("action.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("description"),'value':(actionInstance?.description)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: actionInstance, field: 'nom', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("action.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("nom"),'value':(actionInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: actionInstance, field: 'projet', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("action.projet.label"),'default':("Projet")],-1)
printHtmlPart(7)
invokeTag('select','g',37,['id':("projet"),'name':("projet.id"),'from':(planification.Projet.list()),'optionKey':("id"),'required':(""),'value':(actionInstance?.projet?.id),'class':("many-to-one")],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420455113223L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
