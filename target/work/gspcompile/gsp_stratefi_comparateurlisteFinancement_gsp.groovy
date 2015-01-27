import stratefi.comparateur.Acteur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_comparateurlisteFinancement_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/comparateur/listeFinancement.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurInstanceList.size()} solutions de Financement des PME et Startup")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, crédit, levée de fonds, crowdfunding, PME, startup")],-1)
printHtmlPart(5)
invokeTag('javascript','g',12,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
expressionOut.print(request.contextPath)
printHtmlPart(7)
expressionOut.print(request.contextPath)
printHtmlPart(8)
})
invokeTag('captureHead','sitemesh',31,[:],1)
printHtmlPart(9)
createTagBody(1, {->
printHtmlPart(10)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(11)
invokeTag('set','g',37,['var':("lien"),'value':("http://default-environment-ej4fwvib6c.elasticbeanstalk.com/")],-1)
printHtmlPart(0)
}
printHtmlPart(0)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(11)
invokeTag('set','g',40,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(0)
}
printHtmlPart(12)
loop:{
int i = 0
for( item in (typeProduit) ) {
printHtmlPart(13)
expressionOut.print(item.id)
printHtmlPart(14)
expressionOut.print(item.nom)
printHtmlPart(15)
i++
}
}
printHtmlPart(16)
loop:{
int i = 0
for( item in (secteurs) ) {
printHtmlPart(13)
expressionOut.print(item.id)
printHtmlPart(14)
expressionOut.print(item.nom)
printHtmlPart(15)
i++
}
}
printHtmlPart(17)
loop:{
int i = 0
for( item in (typeProjet) ) {
printHtmlPart(13)
expressionOut.print(item.id)
printHtmlPart(14)
expressionOut.print(item.nom)
printHtmlPart(15)
i++
}
}
printHtmlPart(18)
for( _it13310841 in (typeProduit) ) {
changeItVariable(_it13310841)
printHtmlPart(19)
expressionOut.print(it.nomSEO)
printHtmlPart(20)
expressionOut.print(fieldValue(bean: it, field: "nom"))
printHtmlPart(21)
expressionOut.print(lien)
printHtmlPart(22)
expressionOut.print(it.id)
printHtmlPart(23)
expressionOut.print(it.nomSEO)
printHtmlPart(24)
expressionOut.print(it.nomSEO)
printHtmlPart(25)
}
printHtmlPart(26)
for( _it7906647 in (secteurs) ) {
changeItVariable(_it7906647)
printHtmlPart(19)
expressionOut.print(it.nomSEO)
printHtmlPart(20)
expressionOut.print(fieldValue(bean: it, field: "nom"))
printHtmlPart(27)
expressionOut.print(lien)
printHtmlPart(28)
expressionOut.print(it.id)
printHtmlPart(23)
expressionOut.print(it.nomSEO)
printHtmlPart(24)
expressionOut.print(it.nomSEO)
printHtmlPart(25)
}
printHtmlPart(29)
for( _it11468359 in (typeProjet) ) {
changeItVariable(_it11468359)
printHtmlPart(19)
expressionOut.print(it.nomSEO)
printHtmlPart(30)
expressionOut.print(fieldValue(bean: it, field: "nom"))
printHtmlPart(27)
expressionOut.print(lien)
printHtmlPart(31)
expressionOut.print(it.id)
printHtmlPart(23)
expressionOut.print(it.nomSEO)
printHtmlPart(24)
expressionOut.print(it.nomSEO)
printHtmlPart(25)
}
printHtmlPart(32)
expressionOut.print(acteurInstanceList.size())
printHtmlPart(33)
expressionOut.print(secteurs.size())
printHtmlPart(34)
expressionOut.print(typeProduit.size())
printHtmlPart(35)
expressionOut.print(typeProjet.size())
printHtmlPart(36)
expressionOut.print(acteurInstanceList.size())
printHtmlPart(33)
expressionOut.print(secteurs.size())
printHtmlPart(34)
expressionOut.print(typeProduit.size())
printHtmlPart(35)
expressionOut.print(typeProjet.size())
printHtmlPart(37)
loop:{
int i = 0
for( acteurInstance in (acteurInstanceList) ) {
printHtmlPart(38)
expressionOut.print(request.contextPath)
printHtmlPart(39)
expressionOut.print(acteurInstance.id)
printHtmlPart(23)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(40)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(14)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(41)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(42)
expressionOut.print(request.contextPath)
printHtmlPart(39)
expressionOut.print(acteurInstance.id)
printHtmlPart(23)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(40)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(43)
i++
}
}
printHtmlPart(44)
})
invokeTag('captureBody','sitemesh',489,[:],1)
printHtmlPart(45)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422297401843L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
