import entreprises.Demande
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_demandeindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/demande/index.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'demande.label', default: 'Demande'))],-1)
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
invokeTag('sortableColumn','g',27,['property':("nom"),'title':(message(code: 'demande.nom.label', default: 'Nom'))],-1)
printHtmlPart(13)
invokeTag('message','g',29,['code':("demande.user.label"),'default':("User")],-1)
printHtmlPart(14)
invokeTag('message','g',31,['code':("demande.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(15)
invokeTag('sortableColumn','g',33,['property':("description"),'title':(message(code: 'demande.description.label', default: 'Description'))],-1)
printHtmlPart(16)
invokeTag('sortableColumn','g',35,['property':("urlSite"),'title':(message(code: 'demande.urlSite.label', default: 'Url Site'))],-1)
printHtmlPart(16)
invokeTag('sortableColumn','g',37,['property':("besoinMarche"),'title':(message(code: 'demande.besoinMarche.label', default: 'Besoin Marche'))],-1)
printHtmlPart(17)
loop:{
int i = 0
for( demandeInstance in (demandeInstanceList) ) {
printHtmlPart(18)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(19)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: demandeInstance, field: "nom"))
})
invokeTag('link','g',45,['action':("show"),'id':(demandeInstance.id)],3)
printHtmlPart(20)
expressionOut.print(fieldValue(bean: demandeInstance, field: "user"))
printHtmlPart(20)
expressionOut.print(fieldValue(bean: demandeInstance, field: "entreprise"))
printHtmlPart(20)
expressionOut.print(fieldValue(bean: demandeInstance, field: "description"))
printHtmlPart(20)
expressionOut.print(fieldValue(bean: demandeInstance, field: "urlSite"))
printHtmlPart(20)
expressionOut.print(fieldValue(bean: demandeInstance, field: "besoinMarche"))
printHtmlPart(21)
i++
}
}
printHtmlPart(22)
invokeTag('paginate','g',62,['total':(demandeInstanceCount ?: 0)],-1)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',65,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426434811060L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
