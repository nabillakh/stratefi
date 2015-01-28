import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_empruntcreate_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/emprunt/create.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("Alloratio propose gratuitement un outil de simulation de crédit bancaire")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, crédit, banque, PME, startup")],-1)
printHtmlPart(4)
expressionOut.print(request.contextPath)
printHtmlPart(5)
invokeTag('javascript','g',11,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(7)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(8)
invokeTag('set','g',20,['var':("lien"),'value':("http://www.alloratio.com")],-1)
printHtmlPart(9)
}
printHtmlPart(9)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(8)
invokeTag('set','g',23,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(9)
}
printHtmlPart(10)
expressionOut.print(request.contextPath)
printHtmlPart(11)
expressionOut.print(empruntInstance?.nom)
printHtmlPart(12)
expressionOut.print(empruntInstance?.nbMensualite)
printHtmlPart(13)
expressionOut.print(empruntInstance?.montant)
printHtmlPart(14)
expressionOut.print(empruntInstance?.tauxInteret)
printHtmlPart(15)
expressionOut.print(empruntInstance?.tauxAssurance)
printHtmlPart(16)
expressionOut.print(k)
printHtmlPart(17)
invokeTag('remoteFunction','g',130,['controller':("emprunt"),'action':("amortissement"),'params':("\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"),'update':("amortissement")],-1)
printHtmlPart(18)
invokeTag('remoteFunction','g',140,['controller':("emprunt"),'action':("amortissement"),'params':("\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"),'update':("amortissement")],-1)
printHtmlPart(19)
expressionOut.print(request.contextPath)
printHtmlPart(20)
expressionOut.print(request.contextPath)
printHtmlPart(21)
expressionOut.print(request.contextPath)
printHtmlPart(22)
expressionOut.print(request.contextPath)
printHtmlPart(23)
expressionOut.print(request.contextPath)
printHtmlPart(24)
expressionOut.print(request.contextPath)
printHtmlPart(25)
expressionOut.print(request.contextPath)
printHtmlPart(26)
expressionOut.print(request.contextPath)
printHtmlPart(27)
expressionOut.print(request.contextPath)
printHtmlPart(28)
expressionOut.print(request.contextPath)
printHtmlPart(29)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422432180177L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
