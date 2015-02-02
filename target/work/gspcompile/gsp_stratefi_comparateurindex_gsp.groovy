import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_comparateurindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/comparateur/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurs.size()} solutions de Financement des PME et startup pour projets de type : ")],-1)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':(" financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire")],-1)
printHtmlPart(4)
invokeTag('javascript','g',18,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',19,[:],1)
printHtmlPart(6)
createTagBody(1, {->
printHtmlPart(7)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(8)
invokeTag('set','g',24,['var':("lien"),'value':("http://www.alloratio.com/")],-1)
printHtmlPart(9)
}
printHtmlPart(9)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(8)
invokeTag('set','g',27,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(9)
}
printHtmlPart(10)
expressionOut.print(lien)
printHtmlPart(11)
loop:{
int i = 0
for( item in (typeProduits) ) {
printHtmlPart(12)
expressionOut.print(item.id)
printHtmlPart(13)
expressionOut.print(item.nom)
printHtmlPart(14)
i++
}
}
printHtmlPart(15)
loop:{
int i = 0
for( item in (secteurs) ) {
printHtmlPart(12)
expressionOut.print(item.id)
printHtmlPart(13)
expressionOut.print(item.nom)
printHtmlPart(14)
i++
}
}
printHtmlPart(16)
loop:{
int i = 0
for( item in (typesProjet) ) {
printHtmlPart(12)
expressionOut.print(item.id)
printHtmlPart(13)
expressionOut.print(item.nom)
printHtmlPart(14)
i++
}
}
printHtmlPart(17)
for( _it6978069 in (acteurs) ) {
changeItVariable(_it6978069)
printHtmlPart(18)
expressionOut.print(it.nomSEO)
printHtmlPart(19)
expressionOut.print(fieldValue(bean: it, field: "nom"))
printHtmlPart(20)
expressionOut.print(lien)
printHtmlPart(21)
expressionOut.print(it.id)
printHtmlPart(22)
expressionOut.print(it.nomSEO)
printHtmlPart(23)
expressionOut.print(it.nomSEO)
printHtmlPart(24)
}
printHtmlPart(25)
})
invokeTag('captureBody','sitemesh',123,[:],1)
printHtmlPart(26)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422695328179L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
