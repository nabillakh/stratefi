import planification.Pdp
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_pdp_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/pdp/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: pdpInstance, field: 'mouvement', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("pdp.mouvement.label"),'default':("Mouvement")],-1)
printHtmlPart(2)
for( m in (pdpInstance?.mouvement) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(m?.encodeAsHTML())
})
invokeTag('link','g',13,['controller':("mouvement"),'action':("show"),'id':(m.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'mouvement.label', default: 'Mouvement')]))
})
invokeTag('link','g',16,['controller':("mouvement"),'action':("create"),'params':(['pdp.id': pdpInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: pdpInstance, field: 'mois', 'error'))
printHtmlPart(7)
invokeTag('message','g',25,['code':("pdp.mois.label"),'default':("Mois")],-1)
printHtmlPart(8)
invokeTag('field','g',28,['name':("mois"),'type':("number"),'value':(pdpInstance.mois),'required':("")],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: pdpInstance, field: 'pic', 'error'))
printHtmlPart(10)
invokeTag('message','g',34,['code':("pdp.pic.label"),'default':("Pic")],-1)
printHtmlPart(8)
invokeTag('select','g',37,['id':("pic"),'name':("pic.id"),'from':(planification.Pic.list()),'optionKey':("id"),'required':(""),'value':(pdpInstance?.pic?.id),'class':("many-to-one")],-1)
printHtmlPart(11)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420467080393L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
