import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurficheProduit_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/ficheProduit.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
printHtmlPart(3)
expressionOut.print(type.nom)
printHtmlPart(4)
})
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurs.size()} solutions de Financement des PME et startup par ${type.nom}")],-1)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("${type.nomSEO}, financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire")],-1)
printHtmlPart(6)
invokeTag('javascript','g',15,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',16,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(9)
invokeTag('set','g',21,['var':("lien"),'value':("http://www.alloratio.com")],-1)
printHtmlPart(10)
}
printHtmlPart(10)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(9)
invokeTag('set','g',24,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(10)
}
printHtmlPart(11)
expressionOut.print(type.nom)
printHtmlPart(12)
expressionOut.print(acteurs.size())
printHtmlPart(13)
expressionOut.print(type.nom)
printHtmlPart(14)
expressionOut.print(type.nom)
printHtmlPart(15)
expressionOut.print(type.nom)
printHtmlPart(16)
expressionOut.print(type.nom)
printHtmlPart(17)
loop:{
int i = 0
for( acteurInstance in (acteurs) ) {
printHtmlPart(18)
expressionOut.print(request.contextPath)
printHtmlPart(19)
expressionOut.print(acteurInstance?.id)
printHtmlPart(20)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(21)
expressionOut.print(lien)
printHtmlPart(22)
expressionOut.print(acteurInstance.id)
printHtmlPart(23)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(24)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(12)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(25)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(26)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(27)
expressionOut.print(lien)
printHtmlPart(22)
expressionOut.print(acteurInstance.id)
printHtmlPart(23)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(24)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(28)
i++
}
}
printHtmlPart(29)
loop:{
int i = 0
for( item in (typeProduits) ) {
printHtmlPart(30)
expressionOut.print(item.id)
printHtmlPart(12)
expressionOut.print(item.nom)
printHtmlPart(31)
i++
}
}
printHtmlPart(32)
loop:{
int i = 0
for( item in (secteurs) ) {
printHtmlPart(30)
expressionOut.print(item.id)
printHtmlPart(12)
expressionOut.print(item.nom)
printHtmlPart(31)
i++
}
}
printHtmlPart(33)
loop:{
int i = 0
for( item in (typesProjet) ) {
printHtmlPart(30)
expressionOut.print(item.id)
printHtmlPart(12)
expressionOut.print(item.nom)
printHtmlPart(31)
i++
}
}
printHtmlPart(34)
})
invokeTag('captureBody','sitemesh',140,[:],1)
printHtmlPart(35)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422393997825L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
