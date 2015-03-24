import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_empruntamortissement_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/emprunt/amortissement.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(request.contextPath)
printHtmlPart(1)
expressionOut.print(request.contextPath)
printHtmlPart(2)
invokeTag('remoteFunction','g',10,['controller':("prospect"),'action':("envoyer"),'params':("\'mail=\' + mail+ '&message=\' + message")],-1)
printHtmlPart(3)
expressionOut.print(empruntInstance?.nom)
printHtmlPart(4)
expressionOut.print(empruntInstance?.nbMensualite)
printHtmlPart(5)
expressionOut.print(empruntInstance?.montant)
printHtmlPart(6)
expressionOut.print(empruntInstance?.tauxInteret)
printHtmlPart(7)
expressionOut.print(empruntInstance?.tauxAssurance)
printHtmlPart(8)
loop:{
int k = 0
for( mensualite in (mensualitesCompletes) ) {
printHtmlPart(9)
expressionOut.print((k % 2) == 0 ? 'even' : 'odd')
printHtmlPart(10)
expressionOut.print(mensualite.Mois)
printHtmlPart(11)
expressionOut.print(mensualite.capitalDu)
printHtmlPart(12)
expressionOut.print(mensualite.interetMois)
printHtmlPart(13)
expressionOut.print(mensualite.capital)
printHtmlPart(14)
k++
}
}
printHtmlPart(15)
expressionOut.print(montantEmprunt)
printHtmlPart(16)
expressionOut.print(montantEmprunt)
printHtmlPart(17)
expressionOut.print(coutCredit)
printHtmlPart(18)
expressionOut.print(coutCredit)
printHtmlPart(17)
expressionOut.print(coutAssurance)
printHtmlPart(19)
expressionOut.print(coutAssurance)
printHtmlPart(20)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422385699272L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
