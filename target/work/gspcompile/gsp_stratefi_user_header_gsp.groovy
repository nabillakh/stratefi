import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_user_header_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_header.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(lien)
printHtmlPart(1)
expressionOut.print(raw(phrase))
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
expressionOut.print(lien)
printHtmlPart(4)
})
invokeTag('ifLoggedIn','sec',15,[:],1)
printHtmlPart(5)
createTagBody(1, {->
printHtmlPart(6)
expressionOut.print(lien)
printHtmlPart(7)
})
invokeTag('ifNotLoggedIn','sec',19,[:],1)
printHtmlPart(8)
expressionOut.print(lien)
printHtmlPart(9)
expressionOut.print(lien)
printHtmlPart(10)
expressionOut.print(sec.loggedInUserInfo(field:"id"))
printHtmlPart(11)
expressionOut.print(lien)
printHtmlPart(12)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427114229897L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
