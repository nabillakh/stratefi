import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_user_formStartup_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_formStartup.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'mesLiasses', 'error'))
printHtmlPart(1)
invokeTag('message','g',5,['code':("entreprise.mesLiasses.label"),'default':("Mes Liasses")],-1)
printHtmlPart(2)
for( m in (entrepriseInstance?.mesLiasses) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(m?.encodeAsHTML())
})
invokeTag('link','g',11,['controller':("liasse"),'action':("show"),'id':(m.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'liasse.label', default: 'Liasse')]))
})
invokeTag('link','g',14,['controller':("liasse"),'action':("create"),'params':(['entreprise.id': entrepriseInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'siren', 'error'))
printHtmlPart(7)
invokeTag('message','g',23,['code':("entreprise.siren.label"),'default':("Siren")],-1)
printHtmlPart(8)
invokeTag('textField','g',26,['name':("siren"),'value':(entrepriseInstance?.siren)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'nom', 'error'))
printHtmlPart(10)
invokeTag('message','g',32,['code':("entreprise.nom.label"),'default':("Nom")],-1)
printHtmlPart(8)
invokeTag('textField','g',35,['name':("nom"),'value':(entrepriseInstance?.nom)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'pic', 'error'))
printHtmlPart(11)
invokeTag('message','g',41,['code':("entreprise.pic.label"),'default':("Pic")],-1)
printHtmlPart(2)
for( p in (entrepriseInstance?.pic) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',47,['controller':("PIC"),'action':("show"),'id':(p.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'PIC.label', default: 'PIC')]))
})
invokeTag('link','g',50,['controller':("PIC"),'action':("create"),'params':(['entreprise.id': entrepriseInstance?.id])],1)
printHtmlPart(12)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420447807498L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
