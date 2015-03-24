import planification.Ligne
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_ligne_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/ligne/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: ligneInstance, field: 'valeur', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("ligne.valeur.label"),'default':("Valeur")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("valeur"),'value':(fieldValue(bean: ligneInstance, field: 'valeur')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: ligneInstance, field: 'entreprise', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("ligne.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(5)
invokeTag('select','g',19,['id':("entreprise"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'value':(ligneInstance?.entreprise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: ligneInstance, field: 'mouvement', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("ligne.mouvement.label"),'default':("Mouvement")],-1)
printHtmlPart(7)
for( m in (ligneInstance?.mouvement) ) {
printHtmlPart(8)
createTagBody(2, {->
expressionOut.print(m?.encodeAsHTML())
})
invokeTag('link','g',31,['controller':("mouvement"),'action':("show"),'id':(m.id)],2)
printHtmlPart(9)
}
printHtmlPart(10)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'mouvement.label', default: 'Mouvement')]))
})
invokeTag('link','g',34,['controller':("mouvement"),'action':("create"),'params':(['ligne.id': ligneInstance?.id])],1)
printHtmlPart(11)
expressionOut.print(hasErrors(bean: ligneInstance, field: 'action', 'error'))
printHtmlPart(12)
invokeTag('message','g',43,['code':("ligne.action.label"),'default':("Action")],-1)
printHtmlPart(5)
invokeTag('select','g',46,['id':("action"),'name':("action.id"),'from':(planification.Action.list()),'optionKey':("id"),'value':(ligneInstance?.action?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: ligneInstance, field: 'indicateur', 'error'))
printHtmlPart(13)
invokeTag('message','g',52,['code':("ligne.indicateur.label"),'default':("Indicateur")],-1)
printHtmlPart(5)
invokeTag('select','g',55,['id':("indicateur"),'name':("indicateur.id"),'from':(referentiel.Indicateur.list()),'optionKey':("id"),'value':(ligneInstance?.indicateur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(14)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420467080324L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
