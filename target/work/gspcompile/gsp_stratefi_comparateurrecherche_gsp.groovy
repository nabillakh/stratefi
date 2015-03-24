import stratefi.comparateur.Acteur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_comparateurrecherche_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/comparateur/recherche.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',9,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',9,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':(" solutions de Financement des PME et Startup")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, crédit, levée de fonds, crowdfunding, PME, startup")],-1)
printHtmlPart(5)
invokeTag('javascript','g',13,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',24,[:],1)
printHtmlPart(7)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(8)
invokeTag('set','g',28,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(9)
}
printHtmlPart(9)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(8)
invokeTag('set','g',31,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(9)
}
printHtmlPart(10)
createTagBody(1, {->
printHtmlPart(11)
expressionOut.print(q)
printHtmlPart(12)
expressionOut.print(q)
printHtmlPart(13)
if(true && (searchResult?.results)) {
printHtmlPart(14)
expressionOut.print(searchResult?.results)
printHtmlPart(15)
invokeTag('set','g',66,['var':("total"),'value':((searchResult.total))],-1)
printHtmlPart(16)
expressionOut.print(total)
printHtmlPart(17)
}
else {
printHtmlPart(18)
invokeTag('set','g',70,['var':("total"),'value':(0)],-1)
printHtmlPart(9)
}
printHtmlPart(19)
if(true && (total == 0)) {
printHtmlPart(20)
}
printHtmlPart(21)
if(true && (acteurs)) {
printHtmlPart(22)
for( acteurInstance in (acteurs) ) {
printHtmlPart(23)
expressionOut.print(request.contextPath)
printHtmlPart(24)
expressionOut.print(acteurInstance?.id)
printHtmlPart(25)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(29)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(30)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(31)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(32)
}
printHtmlPart(33)
}
printHtmlPart(21)
if(true && (produits)) {
printHtmlPart(34)
for( acteurInstance in (produits) ) {
printHtmlPart(23)
expressionOut.print(request.contextPath)
printHtmlPart(24)
expressionOut.print(acteurInstance?.id)
printHtmlPart(25)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nom)
printHtmlPart(28)
expressionOut.print(acteurInstance.nom)
printHtmlPart(29)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(30)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(31)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nom)
printHtmlPart(28)
expressionOut.print(acteurInstance.nom)
printHtmlPart(32)
}
printHtmlPart(35)
}
printHtmlPart(36)
if(true && (secteurs)) {
printHtmlPart(37)
for( acteurInstance in (secteurs) ) {
printHtmlPart(23)
expressionOut.print(request.contextPath)
printHtmlPart(24)
expressionOut.print(acteurInstance?.id)
printHtmlPart(25)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(29)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(30)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(31)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(32)
}
printHtmlPart(35)
}
printHtmlPart(38)
if(true && (typeProduits)) {
printHtmlPart(39)
for( acteurInstance in (typeProduits) ) {
printHtmlPart(23)
expressionOut.print(request.contextPath)
printHtmlPart(24)
expressionOut.print(acteurInstance?.id)
printHtmlPart(25)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nom)
printHtmlPart(28)
expressionOut.print(acteurInstance.nom)
printHtmlPart(29)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(30)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(31)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(28)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(32)
}
printHtmlPart(35)
}
printHtmlPart(40)
})
invokeTag('captureBody','sitemesh',216,[:],1)
printHtmlPart(41)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427123587835L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
