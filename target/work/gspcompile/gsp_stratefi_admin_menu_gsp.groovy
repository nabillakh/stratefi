import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_admin_menu_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/admin/_menu.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
expressionOut.print(lien)
printHtmlPart(2)
})
invokeTag('ifLoggedIn','sec',25,[:],1)
printHtmlPart(3)
expressionOut.print(lien)
printHtmlPart(4)
expressionOut.print(lien)
printHtmlPart(5)
expressionOut.print(lien)
printHtmlPart(6)
expressionOut.print(lien)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
expressionOut.print(lien)
printHtmlPart(9)
})
invokeTag('ifNotLoggedIn','sec',71,[:],1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427295070614L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
