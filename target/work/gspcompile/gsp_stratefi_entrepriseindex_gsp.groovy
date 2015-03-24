import entreprises.Entreprise
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_entrepriseindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/entreprise/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'entreprise.label', default: 'Entreprise'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
invokeTag('message','g',27,['code':("entreprise.secteur.label"),'default':("Secteur")],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',29,['property':("descriptionActivite"),'title':(message(code: 'entreprise.descriptionActivite.label', default: 'Description Activite'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',31,['property':("siren"),'title':(message(code: 'entreprise.siren.label', default: 'Siren'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',33,['property':("adresse"),'title':(message(code: 'entreprise.adresse.label', default: 'Adresse'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',35,['property':("codePostal"),'title':(message(code: 'entreprise.codePostal.label', default: 'Code Postal'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',37,['property':("ville"),'title':(message(code: 'entreprise.ville.label', default: 'Ville'))],-1)
printHtmlPart(15)
loop:{
int i = 0
for( entrepriseInstance in (entrepriseInstanceList) ) {
printHtmlPart(16)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(17)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: entrepriseInstance, field: "secteur"))
})
invokeTag('link','g',45,['action':("show"),'id':(entrepriseInstance.id)],3)
printHtmlPart(18)
expressionOut.print(fieldValue(bean: entrepriseInstance, field: "descriptionActivite"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: entrepriseInstance, field: "siren"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: entrepriseInstance, field: "adresse"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: entrepriseInstance, field: "codePostal"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: entrepriseInstance, field: "ville"))
printHtmlPart(19)
i++
}
}
printHtmlPart(20)
invokeTag('paginate','g',62,['total':(entrepriseInstanceCount ?: 0)],-1)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',65,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426584377397L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
