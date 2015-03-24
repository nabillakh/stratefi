import entreprises.BusinessModel
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_businessModel_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/businessModel/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: businessModelInstance, field: 'croissanceCa', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("businessModel.croissanceCa.label"),'default':("Croissance Ca")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("croissanceCa"),'name':("croissanceCa.id"),'from':(referentiel.CroissanceCa.list()),'optionKey':("id"),'value':(businessModelInstance?.croissanceCa?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: businessModelInstance, field: 'volumeClient', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("businessModel.volumeClient.label"),'default':("Volume Client")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("volumeClient"),'name':("volumeClient.id"),'from':(referentiel.VolumeClient.list()),'optionKey':("id"),'value':(businessModelInstance?.volumeClient?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: businessModelInstance, field: 'creanceClient', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("businessModel.creanceClient.label"),'default':("Creance Client")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("creanceClient"),'name':("creanceClient.id"),'from':(referentiel.CreanceClient.list()),'optionKey':("id"),'value':(businessModelInstance?.creanceClient?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: businessModelInstance, field: 'marchandise', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("businessModel.marchandise.label"),'default':("Marchandise")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("marchandise"),'name':("marchandise.id"),'from':(referentiel.Marchandise.list()),'optionKey':("id"),'value':(businessModelInstance?.marchandise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: businessModelInstance, field: 'entreprise', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("businessModel.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(2)
invokeTag('select','g',46,['id':("entreprise"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'value':(businessModelInstance?.entreprise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426836134857L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
