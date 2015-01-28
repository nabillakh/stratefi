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
invokeTag('javascript','g',10,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',23,[:],1)
printHtmlPart(6)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(7)
invokeTag('set','g',26,['var':("lien"),'value':("http://www.alloratio.com")],-1)
printHtmlPart(8)
}
printHtmlPart(8)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(7)
invokeTag('set','g',29,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(8)
}
printHtmlPart(9)
expressionOut.print(request.contextPath)
printHtmlPart(10)
expressionOut.print(empruntInstance?.nom)
printHtmlPart(11)
expressionOut.print(empruntInstance?.nbMensualite)
printHtmlPart(12)
expressionOut.print(empruntInstance?.montant)
printHtmlPart(13)
expressionOut.print(empruntInstance?.tauxInteret)
printHtmlPart(14)
expressionOut.print(empruntInstance?.tauxAssurance)
printHtmlPart(15)
expressionOut.print(k)
printHtmlPart(16)
invokeTag('remoteFunction','g',136,['controller':("emprunt"),'action':("amortissement"),'params':("\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"),'update':("amortissement")],-1)
printHtmlPart(17)
invokeTag('remoteFunction','g',146,['controller':("emprunt"),'action':("amortissement"),'params':("\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"),'update':("amortissement")],-1)
printHtmlPart(18)
expressionOut.print(request.contextPath)
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
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422393997871L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
