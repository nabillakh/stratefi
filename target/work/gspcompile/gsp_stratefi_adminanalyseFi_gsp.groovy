import stratefi.comparateur.Acteur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_adminanalyseFi_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/admin/analyseFi.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("Avec Alloratio, Apprenez à évaluer vous même votre Santé financière et Profitez de l'expérience d'autres Dirigeants de PME et startup ! La première session est gratuite !")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, formation, collaboratif, finance, dirigeants, PME, startup")],-1)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(4)
invokeTag('javascript','g',13,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
expressionOut.print(request.contextPath)
printHtmlPart(7)
expressionOut.print(request.contextPath)
printHtmlPart(8)
})
invokeTag('captureHead','sitemesh',32,[:],1)
printHtmlPart(9)
createTagBody(1, {->
printHtmlPart(10)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(11)
invokeTag('set','g',38,['var':("lien"),'value':("http://comparateur.alloratio.com/")],-1)
printHtmlPart(0)
}
printHtmlPart(0)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(11)
invokeTag('set','g',41,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(0)
}
printHtmlPart(12)
})
invokeTag('captureBody','sitemesh',355,[:],1)
printHtmlPart(13)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423692247836L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
