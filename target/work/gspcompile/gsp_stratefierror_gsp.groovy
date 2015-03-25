import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefierror_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/error.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(2)
}
else {
printHtmlPart(3)
}
})
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(4)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(5)
expressionOut.print(resource(dir: 'css', file: 'errors.css'))
printHtmlPart(6)
}
printHtmlPart(7)
expressionOut.print(request.contextPath)
printHtmlPart(8)
expressionOut.print(request.contextPath)
printHtmlPart(9)
expressionOut.print(request.contextPath)
printHtmlPart(10)
expressionOut.print(request.contextPath)
printHtmlPart(11)
expressionOut.print(request.contextPath)
printHtmlPart(12)
})
invokeTag('captureHead','sitemesh',18,[:],1)
printHtmlPart(13)
createTagBody(1, {->
printHtmlPart(14)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(15)
invokeTag('set','g',22,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(16)
}
printHtmlPart(16)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(15)
invokeTag('set','g',25,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(18)
invokeTag('renderException','g',31,['exception':(exception)],-1)
printHtmlPart(1)
}
else {
printHtmlPart(19)
expressionOut.print(lien)
printHtmlPart(20)
expressionOut.print(lien)
printHtmlPart(21)
}
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',48,['class':("body-404")],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427232374445L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
