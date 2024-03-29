import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_usergeneral_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/general.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createClosureForHtmlPart(1, 1)
invokeTag('link','g',4,['action':("create"),'controller':("projet")],1)
printHtmlPart(2)
createClosureForHtmlPart(3, 1)
invokeTag('link','g',6,['action':("create"),'controller':("objectif")],1)
printHtmlPart(2)
createClosureForHtmlPart(4, 1)
invokeTag('link','g',8,['action':("create"),'controller':("action")],1)
printHtmlPart(2)
createClosureForHtmlPart(5, 1)
invokeTag('link','g',10,['action':("create"),'controller':("typeAction")],1)
printHtmlPart(6)
expressionOut.print(entrepriseInstance.nom)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420530370307L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
