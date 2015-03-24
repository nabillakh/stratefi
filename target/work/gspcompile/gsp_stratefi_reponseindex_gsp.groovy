import entreprises.Reponse
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_reponseindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/reponse/index.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'reponse.label', default: 'Reponse'))],-1)
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
invokeTag('message','g',27,['code':("reponse.acteur.label"),'default':("Acteur")],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',29,['property':("texte"),'title':(message(code: 'reponse.texte.label', default: 'Texte'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',31,['property':("taux"),'title':(message(code: 'reponse.taux.label', default: 'Taux'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',33,['property':("montant"),'title':(message(code: 'reponse.montant.label', default: 'Montant'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',35,['property':("commission"),'title':(message(code: 'reponse.commission.label', default: 'Commission'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',37,['property':("date"),'title':(message(code: 'reponse.date.label', default: 'Date'))],-1)
printHtmlPart(15)
loop:{
int i = 0
for( reponseInstance in (reponseInstanceList) ) {
printHtmlPart(16)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(17)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: reponseInstance, field: "acteur"))
})
invokeTag('link','g',45,['action':("show"),'id':(reponseInstance.id)],3)
printHtmlPart(18)
expressionOut.print(fieldValue(bean: reponseInstance, field: "texte"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: reponseInstance, field: "taux"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: reponseInstance, field: "montant"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: reponseInstance, field: "commission"))
printHtmlPart(18)
invokeTag('formatDate','g',55,['date':(reponseInstance.date)],-1)
printHtmlPart(19)
i++
}
}
printHtmlPart(20)
invokeTag('paginate','g',62,['total':(reponseInstanceCount ?: 0)],-1)
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
public static final long LAST_MODIFIED = 1426434743942L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
