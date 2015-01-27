import planification.Projet
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_projet_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/projet/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: projetInstance, field: 'actions', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("projet.actions.label"),'default':("Actions")],-1)
printHtmlPart(2)
for( a in (projetInstance?.actions) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(a?.encodeAsHTML())
})
invokeTag('link','g',13,['controller':("action"),'action':("show"),'id':(a.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'action.label', default: 'Action')]))
})
invokeTag('link','g',16,['controller':("action"),'action':("create"),'params':(['projet.id': projetInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: projetInstance, field: 'objectif', 'error'))
printHtmlPart(7)
invokeTag('message','g',25,['code':("projet.objectif.label"),'default':("Objectif")],-1)
printHtmlPart(8)
invokeTag('select','g',28,['id':("objectif"),'name':("objectif.id"),'from':(referentiel.Objectif.list()),'optionKey':("id"),'value':(projetInstance?.objectif?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: projetInstance, field: 'description', 'error'))
printHtmlPart(10)
invokeTag('message','g',34,['code':("projet.description.label"),'default':("Description")],-1)
printHtmlPart(8)
invokeTag('textField','g',37,['name':("description"),'value':(projetInstance?.description)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: projetInstance, field: 'entreprise', 'error'))
printHtmlPart(11)
invokeTag('message','g',43,['code':("projet.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(8)
invokeTag('select','g',46,['id':("entreprise"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'value':(projetInstance?.entreprise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: projetInstance, field: 'nom', 'error'))
printHtmlPart(12)
invokeTag('message','g',52,['code':("projet.nom.label"),'default':("Nom")],-1)
printHtmlPart(8)
invokeTag('textField','g',55,['name':("nom"),'value':(projetInstance?.nom)],-1)
printHtmlPart(13)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420455282354L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
