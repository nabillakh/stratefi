import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurfinancementProjet_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/financementProjet.gsp" }
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
})
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurs.size()} solutions de Financement des PME et startup pour projets :  ${type.nom}")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("${type.nomSEO}, financement, credit, levee de fonds, crowdfunding, PME, startup")],-1)
printHtmlPart(5)
invokeTag('javascript','g',15,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',16,[:],1)
printHtmlPart(6)
createTagBody(1, {->
printHtmlPart(7)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(8)
invokeTag('set','g',20,['var':("lien"),'value':("http://www.alloratio.com")],-1)
printHtmlPart(9)
}
printHtmlPart(9)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(8)
invokeTag('set','g',23,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(9)
}
printHtmlPart(10)
expressionOut.print(type.nom)
printHtmlPart(11)
expressionOut.print(acteurs.size())
printHtmlPart(12)
expressionOut.print(type.nom)
printHtmlPart(13)
expressionOut.print(type.nom)
printHtmlPart(14)
expressionOut.print(type.nom)
printHtmlPart(15)
expressionOut.print(type.nom)
printHtmlPart(16)
loop:{
int i = 0
for( acteurInstance in (acteurs) ) {
printHtmlPart(17)
expressionOut.print(request.contextPath)
printHtmlPart(18)
expressionOut.print(acteurInstance?.id)
printHtmlPart(19)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(20)
expressionOut.print(lien)
printHtmlPart(21)
expressionOut.print(acteurInstance.id)
printHtmlPart(22)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(23)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(11)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(24)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(25)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(26)
expressionOut.print(lien)
printHtmlPart(21)
expressionOut.print(acteurInstance.id)
printHtmlPart(22)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(23)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(27)
i++
}
}
printHtmlPart(28)
loop:{
int i = 0
for( item in (typeProduits) ) {
printHtmlPart(29)
expressionOut.print(item.id)
printHtmlPart(11)
expressionOut.print(item.nom)
printHtmlPart(30)
i++
}
}
printHtmlPart(31)
loop:{
int i = 0
for( item in (secteurs) ) {
printHtmlPart(29)
expressionOut.print(item.id)
printHtmlPart(11)
expressionOut.print(item.nom)
printHtmlPart(30)
i++
}
}
printHtmlPart(32)
loop:{
int i = 0
for( item in (typesProjet) ) {
printHtmlPart(29)
expressionOut.print(item.id)
printHtmlPart(11)
expressionOut.print(item.nom)
printHtmlPart(30)
i++
}
}
printHtmlPart(33)
})
invokeTag('captureBody','sitemesh',140,[:],1)
printHtmlPart(34)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422393997834L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
