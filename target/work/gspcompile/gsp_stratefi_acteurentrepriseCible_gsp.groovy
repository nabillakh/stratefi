import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurentrepriseCible_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/entrepriseCible.gsp" }
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
expressionOut.print(secteur.nom)
})
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurs.size()} solutions de Financement des PME et startup du secteur ${secteur.nomSEO}")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("${secteur.nomSEO}, financement, credit, levee de fonds, crowdfunding, PME, startup")],-1)
printHtmlPart(4)
if(true && (secteur?.publie)) {
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("index")],-1)
printHtmlPart(4)
}
else {
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',18,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(6)
}
printHtmlPart(4)
invokeTag('javascript','g',20,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',21,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(9)
invokeTag('set','g',25,['var':("lien"),'value':("http://www.alloratio.com/")],-1)
printHtmlPart(10)
}
printHtmlPart(10)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(9)
invokeTag('set','g',28,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(10)
}
printHtmlPart(11)
expressionOut.print(request.contextPath)
printHtmlPart(12)
expressionOut.print(secteur.nom)
printHtmlPart(13)
expressionOut.print(acteurs.size())
printHtmlPart(14)
expressionOut.print(secteur.nom)
printHtmlPart(15)
expressionOut.print(secteur.nom)
printHtmlPart(16)
expressionOut.print(secteur.nom)
printHtmlPart(17)
expressionOut.print(secteur.nom)
printHtmlPart(18)
loop:{
int i = 0
for( acteurInstance in (acteurs) ) {
printHtmlPart(19)
if(true && ((acteurInstance.publie))) {
printHtmlPart(20)
expressionOut.print(request.contextPath)
printHtmlPart(21)
expressionOut.print(acteurInstance?.image)
printHtmlPart(22)
}
else {
printHtmlPart(23)
}
printHtmlPart(24)
expressionOut.print(lien)
printHtmlPart(25)
expressionOut.print(acteurInstance.id)
printHtmlPart(26)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(13)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(28)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(29)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(30)
expressionOut.print(lien)
printHtmlPart(25)
expressionOut.print(acteurInstance.id)
printHtmlPart(26)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(31)
i++
}
}
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',94,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423146966484L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
