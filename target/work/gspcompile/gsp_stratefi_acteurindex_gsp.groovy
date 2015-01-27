import stratefi.comparateur.Acteur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/index.gsp" }
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
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurInstanceList.size()} solutions de Financement des PME et Startup")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, crédit, levée de fonds, crowdfunding, PME, startup")],-1)
printHtmlPart(5)
invokeTag('javascript','g',12,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',13,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
expressionOut.print(acteurInstanceList.size())
printHtmlPart(9)
expressionOut.print(secteurs.size())
printHtmlPart(10)
expressionOut.print(typeProduit.size())
printHtmlPart(11)
expressionOut.print(typeProjet.size())
printHtmlPart(12)
loop:{
int i = 0
for( acteurInstance in (acteurInstanceList) ) {
printHtmlPart(13)
expressionOut.print(request.contextPath)
printHtmlPart(14)
expressionOut.print(acteurInstance.id)
printHtmlPart(15)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(16)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(18)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(19)
expressionOut.print(request.contextPath)
printHtmlPart(14)
expressionOut.print(acteurInstance.id)
printHtmlPart(15)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(16)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(20)
i++
}
}
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',133,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421668955626L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
