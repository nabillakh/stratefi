import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_layoutscomparaison_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/comparaison.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("Content-Type"),'content':("text/html; charset=UTF-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge,chrome=1")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',10,['default':("Alloratio")],-1)
})
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',10,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("Calipolis")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("content-language"),'content':("fr")],-1)
printHtmlPart(4)
expressionOut.print(request.contextPath)
printHtmlPart(5)
expressionOut.print(request.contextPath)
printHtmlPart(6)
expressionOut.print(request.contextPath)
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
expressionOut.print(request.contextPath)
printHtmlPart(13)
expressionOut.print(request.contextPath)
printHtmlPart(14)
expressionOut.print(request.contextPath)
printHtmlPart(15)
expressionOut.print(request.contextPath)
printHtmlPart(16)
expressionOut.print(request.contextPath)
printHtmlPart(17)
expressionOut.print(request.contextPath)
printHtmlPart(18)
expressionOut.print(request.contextPath)
printHtmlPart(19)
expressionOut.print(request.contextPath)
printHtmlPart(20)
invokeTag('layoutHead','g',45,[:],-1)
printHtmlPart(1)
invokeTag('javascript','g',46,['library':("application")],-1)
printHtmlPart(21)
invokeTag('layoutResources','r',47,[:],-1)
printHtmlPart(22)
})
invokeTag('captureHead','sitemesh',48,[:],1)
printHtmlPart(22)
createTagBody(1, {->
printHtmlPart(23)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(24)
invokeTag('set','g',54,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(25)
}
printHtmlPart(25)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(24)
invokeTag('set','g',57,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(25)
}
printHtmlPart(26)
expressionOut.print(lien)
printHtmlPart(27)
expressionOut.print(request.contextPath)
printHtmlPart(28)
expressionOut.print(lien)
printHtmlPart(29)
createTagBody(2, {->
printHtmlPart(30)
expressionOut.print(lien)
printHtmlPart(31)
expressionOut.print(lien)
printHtmlPart(32)
expressionOut.print(sec.loggedInUserInfo(field:"id"))
printHtmlPart(33)
expressionOut.print(lien)
printHtmlPart(34)
})
invokeTag('ifLoggedIn','sec',85,[:],2)
printHtmlPart(35)
createTagBody(2, {->
printHtmlPart(36)
expressionOut.print(lien)
printHtmlPart(37)
})
invokeTag('ifNotLoggedIn','sec',88,[:],2)
printHtmlPart(38)
invokeTag('layoutBody','g',109,[:],-1)
printHtmlPart(39)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(40)
}
printHtmlPart(41)
expressionOut.print(request.contextPath)
printHtmlPart(42)
expressionOut.print(request.contextPath)
printHtmlPart(43)
expressionOut.print(request.contextPath)
printHtmlPart(44)
expressionOut.print(request.contextPath)
printHtmlPart(45)
expressionOut.print(request.contextPath)
printHtmlPart(46)
expressionOut.print(request.contextPath)
printHtmlPart(47)
expressionOut.print(request.contextPath)
printHtmlPart(48)
expressionOut.print(request.contextPath)
printHtmlPart(49)
expressionOut.print(request.contextPath)
printHtmlPart(50)
expressionOut.print(request.contextPath)
printHtmlPart(51)
expressionOut.print(request.contextPath)
printHtmlPart(52)
expressionOut.print(request.contextPath)
printHtmlPart(53)
expressionOut.print(request.contextPath)
printHtmlPart(54)
expressionOut.print(request.contextPath)
printHtmlPart(55)
expressionOut.print(request.contextPath)
printHtmlPart(56)
expressionOut.print(request.contextPath)
printHtmlPart(57)
expressionOut.print(request.contextPath)
printHtmlPart(58)
expressionOut.print(request.contextPath)
printHtmlPart(59)
expressionOut.print(request.contextPath)
printHtmlPart(60)
expressionOut.print(request.contextPath)
printHtmlPart(61)
invokeTag('layoutResources','r',166,[:],-1)
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',167,['class':("")],1)
printHtmlPart(62)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427126635808L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
