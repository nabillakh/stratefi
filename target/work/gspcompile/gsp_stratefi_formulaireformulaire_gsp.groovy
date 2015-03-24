import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_formulaireformulaire_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/formulaire/formulaire.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',5,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',5,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',5,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(5)
invokeTag('set','g',12,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(6)
}
printHtmlPart(6)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(5)
invokeTag('set','g',15,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(6)
}
printHtmlPart(7)
invokeTag('set','g',19,['var':("phrase"),'value':("Préparez votre projet de financement")],-1)
printHtmlPart(8)
invokeTag('render','g',20,['template':("/user/header")],-1)
printHtmlPart(9)
})
invokeTag('captureBody','sitemesh',33,[:],1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427123588194L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
