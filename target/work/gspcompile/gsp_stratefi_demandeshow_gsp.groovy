import connection.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_demandeshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/demande/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
printHtmlPart(3)
expressionOut.print(demande?.nom)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',10,[:],1)
printHtmlPart(5)
createTagBody(1, {->
printHtmlPart(6)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(7)
invokeTag('set','g',15,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(0)
}
printHtmlPart(0)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(7)
invokeTag('set','g',18,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(0)
}
printHtmlPart(8)
invokeTag('set','g',23,['var':("phrase"),'value':("Préparez votre projet de financement")],-1)
printHtmlPart(9)
invokeTag('render','g',24,['template':("/user/header")],-1)
printHtmlPart(10)
if(true && (demandeInstance?.user?.nom)) {
printHtmlPart(11)
expressionOut.print(demandeInstance?.user?.nom)
printHtmlPart(12)
expressionOut.print(demandeInstance?.user?.prenom)
printHtmlPart(13)
}
else {
printHtmlPart(14)
}
printHtmlPart(15)
if(true && (demandeInstance?.user?.telephone)) {
printHtmlPart(13)
expressionOut.print(demandeInstance?.user?.telephone)
printHtmlPart(13)
}
else {
printHtmlPart(14)
}
printHtmlPart(16)
if(true && (demandeInstance?.user?.username)) {
printHtmlPart(13)
expressionOut.print(demandeInstance?.user?.username)
printHtmlPart(13)
}
else {
printHtmlPart(14)
}
printHtmlPart(17)
if(true && (demandeInstance?.entreprise?.nom)) {
printHtmlPart(13)
expressionOut.print(demandeInstance?.entreprise?.nom)
printHtmlPart(13)
}
else {
printHtmlPart(14)
}
printHtmlPart(18)
if(true && (demandeInstance?.entreprise?.siren)) {
printHtmlPart(13)
expressionOut.print(demandeInstance?.entreprise?.siren)
printHtmlPart(13)
}
else {
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (demandeInstance?.entreprise?.secteur?.nom)) {
printHtmlPart(13)
expressionOut.print(demandeInstance?.entreprise?.secteur?.nom)
printHtmlPart(13)
}
else {
printHtmlPart(19)
}
printHtmlPart(21)
if(true && (demandeInstance?.entreprise?.adresse)) {
printHtmlPart(13)
expressionOut.print(demandeInstance?.entreprise?.adresse)
printHtmlPart(22)
expressionOut.print(demandeInstance?.entreprise?.codePostal)
printHtmlPart(12)
expressionOut.print(demandeInstance?.entreprise?.ville)
printHtmlPart(22)
expressionOut.print(demandeInstance?.entreprise?.pays)
printHtmlPart(13)
}
else {
printHtmlPart(14)
}
printHtmlPart(23)
loop:{
int j = 0
for( etatInstance in (etatList) ) {
printHtmlPart(24)
if(true && (etatInstance.id == demandeInstance.etat.id)) {
printHtmlPart(25)
expressionOut.print(etatInstance.nom)
printHtmlPart(26)
}
else {
printHtmlPart(27)
expressionOut.print(etatInstance?.nom)
printHtmlPart(28)
}
printHtmlPart(29)
j++
}
}
printHtmlPart(30)
expressionOut.print(request.contextPath)
printHtmlPart(31)
})
invokeTag('captureBody','sitemesh',177,[:],1)
printHtmlPart(32)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427123588085L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
