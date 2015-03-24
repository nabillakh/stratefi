import stratefi.outil.Emprunt
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_empruntindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/emprunt/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'emprunt.label', default: 'Emprunt'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('message','g',10,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(4)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(5)
invokeTag('message','g',13,['code':("default.home.label")],-1)
printHtmlPart(6)
createTagBody(2, {->
invokeTag('message','g',14,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("create"),'action':("create")],2)
printHtmlPart(7)
invokeTag('message','g',18,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(8)
if(true && (flash.message)) {
printHtmlPart(9)
expressionOut.print(flash.message)
printHtmlPart(10)
}
printHtmlPart(11)
invokeTag('sortableColumn','g',26,['property':("tauxAssurance"),'title':(message(code: 'emprunt.tauxAssurance.label', default: 'Taux Assurance'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',28,['property':("nom"),'title':(message(code: 'emprunt.nom.label', default: 'Nom'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',30,['property':("montant"),'title':(message(code: 'emprunt.montant.label', default: 'Montant'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',32,['property':("nbMensualite"),'title':(message(code: 'emprunt.nbMensualite.label', default: 'Nb Mensualite'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',34,['property':("tauxInteret"),'title':(message(code: 'emprunt.tauxInteret.label', default: 'Taux Interet'))],-1)
printHtmlPart(13)
loop:{
int i = 0
for( empruntInstance in (empruntInstanceList) ) {
printHtmlPart(14)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: empruntInstance, field: "tauxAssurance"))
})
invokeTag('link','g',42,['action':("show"),'id':(empruntInstance.id)],3)
printHtmlPart(16)
expressionOut.print(fieldValue(bean: empruntInstance, field: "nom"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: empruntInstance, field: "montant"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: empruntInstance, field: "nbMensualite"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: empruntInstance, field: "tauxInteret"))
printHtmlPart(17)
i++
}
}
printHtmlPart(18)
invokeTag('paginate','g',57,['total':(empruntInstanceCount ?: 0)],-1)
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',60,[:],1)
printHtmlPart(20)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422367858516L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
