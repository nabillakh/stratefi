import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_logininscription_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/login/inscription.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("Avec Alloratio, comparez plus de 80  solutions de Financement des PME et Startup et trouvez gratuitement le meilleur financement pour votre Entreprise.")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, crédit, levée de fonds, crowdfunding, PME, startup")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("index")],-1)
printHtmlPart(3)
invokeTag('javascript','g',12,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',15,[:],1)
printHtmlPart(6)
createTagBody(1, {->
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
invokeTag('render','g',35,['template':("form")],-1)
printHtmlPart(9)
invokeTag('submitButton','g',39,['name':("submit"),'class':("btn btn-danger"),'value':("S'inscrire")],-1)
printHtmlPart(10)
})
invokeTag('form','g',42,['url':([resource:userInstance, action:'inscrire'])],2)
printHtmlPart(11)
})
invokeTag('captureBody','sitemesh',57,[:],1)
printHtmlPart(12)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427294027755L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
