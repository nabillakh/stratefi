import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_useranalyseFinanciere_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/analyseFinanciere.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(entrepriseInstance.nom)
printHtmlPart(1)
expressionOut.print(entrepriseInstance.id)
printHtmlPart(2)
expressionOut.print(entrepriseInstance.id)
printHtmlPart(3)
invokeTag('remoteFunction','g',50,['controller':("entreprise"),'action':("general"),'params':("\'entrepriseInstance=\'+entreprise2"),'update':("general")],-1)
printHtmlPart(4)
expressionOut.print(entrepriseInstance.id)
printHtmlPart(5)
invokeTag('remoteFunction','g',70,['controller':("entreprise"),'action':("liasse"),'params':("\'entrepriseInstance=\'+entreprise"),'update':("liasse")],-1)
printHtmlPart(6)
invokeTag('remoteFunction','g',73,['controller':("entreprise"),'action':("financier"),'params':("\'entrepriseInstance=\'+entreprise"),'update':("financier")],-1)
printHtmlPart(7)
invokeTag('remoteFunction','g',76,['controller':("entreprise"),'action':("vueFournisseur"),'params':("\'entrepriseInstance=\'+entreprise"),'update':("vueFournisseur")],-1)
printHtmlPart(8)
invokeTag('remoteFunction','g',79,['controller':("entreprise"),'action':("general"),'params':("\'entrepriseInstance=\'+entreprise"),'update':("general")],-1)
printHtmlPart(9)
invokeTag('remoteFunction','g',82,['controller':("entreprise"),'action':("analyseFi"),'params':("\'entrepriseInstance=\'+entreprise"),'update':("analyseFi")],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420455662969L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
