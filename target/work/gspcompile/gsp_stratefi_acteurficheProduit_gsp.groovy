import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurficheProduit_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/ficheProduit.gsp" }
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
createTagBody(3, {->
printHtmlPart(3)
expressionOut.print(type.nom)
printHtmlPart(4)
})
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurs.size()} solutions de Financement des PME et startup par ${type.nom}")],-1)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("${type.nomSEO}, financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire")],-1)
printHtmlPart(6)
if(true && (type?.publie)) {
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("index")],-1)
printHtmlPart(5)
}
else {
printHtmlPart(7)
invokeTag('captureMeta','sitemesh',18,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(8)
}
printHtmlPart(5)
invokeTag('javascript','g',20,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(9)
})
invokeTag('captureHead','sitemesh',21,[:],1)
printHtmlPart(9)
createTagBody(1, {->
printHtmlPart(10)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(11)
invokeTag('set','g',26,['var':("lien"),'value':("http://www.alloratio.com/")],-1)
printHtmlPart(12)
}
printHtmlPart(12)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(11)
invokeTag('set','g',29,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(12)
}
printHtmlPart(13)
expressionOut.print(request.contextPath)
printHtmlPart(14)
expressionOut.print(type.nom)
printHtmlPart(15)
expressionOut.print(acteurs.size())
printHtmlPart(16)
expressionOut.print(type.nom)
printHtmlPart(17)
expressionOut.print(type.nom)
printHtmlPart(18)
expressionOut.print(type.nom)
printHtmlPart(19)
expressionOut.print(type.nom)
printHtmlPart(20)
loop:{
int i = 0
for( acteurInstance in (acteurs) ) {
printHtmlPart(21)
if(true && ((acteurInstance.publie))) {
printHtmlPart(22)
expressionOut.print(request.contextPath)
printHtmlPart(23)
expressionOut.print(acteurInstance?.image)
printHtmlPart(24)
}
else {
printHtmlPart(25)
}
printHtmlPart(26)
expressionOut.print(lien)
printHtmlPart(27)
expressionOut.print(acteurInstance.id)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(29)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(15)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(30)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(31)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(32)
expressionOut.print(lien)
printHtmlPart(27)
expressionOut.print(acteurInstance.id)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(29)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(33)
i++
}
}
printHtmlPart(34)
loop:{
int i = 0
for( item in (typeProduits) ) {
printHtmlPart(35)
expressionOut.print(item.id)
printHtmlPart(15)
expressionOut.print(item.nom)
printHtmlPart(36)
i++
}
}
printHtmlPart(37)
loop:{
int i = 0
for( item in (secteurs) ) {
printHtmlPart(35)
expressionOut.print(item.id)
printHtmlPart(15)
expressionOut.print(item.nom)
printHtmlPart(36)
i++
}
}
printHtmlPart(38)
loop:{
int i = 0
for( item in (typesProjet) ) {
printHtmlPart(35)
expressionOut.print(item.id)
printHtmlPart(15)
expressionOut.print(item.nom)
printHtmlPart(36)
i++
}
}
printHtmlPart(39)
})
invokeTag('captureBody','sitemesh',162,[:],1)
printHtmlPart(40)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423147055188L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
