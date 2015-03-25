import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_formulaireresultat_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/formulaire/resultat.gsp" }
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
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("{acteurs.size()} solutions de Financement des PME et startup pour projets de type : ")],-1)
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':(" financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire")],-1)
printHtmlPart(4)
invokeTag('javascript','g',18,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(6)
expressionOut.print(request.contextPath)
printHtmlPart(7)
expressionOut.print(request.contextPath)
printHtmlPart(8)
expressionOut.print(request.contextPath)
printHtmlPart(9)
})
invokeTag('captureHead','sitemesh',38,[:],1)
printHtmlPart(10)
createTagBody(1, {->
printHtmlPart(11)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(12)
invokeTag('set','g',43,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(13)
}
printHtmlPart(13)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(12)
invokeTag('set','g',46,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
invokeTag('set','g',51,['var':("phrase"),'value':("Comparateur de financement pour PME et startup")],-1)
printHtmlPart(15)
invokeTag('render','g',52,['template':("/user/header")],-1)
printHtmlPart(16)
invokeTag('render','g',68,['template':("/formulaire/formComparateur")],-1)
printHtmlPart(17)
if(true && (acteurs)) {
printHtmlPart(18)
for( _it5529065 in (acteurs) ) {
changeItVariable(_it5529065)
printHtmlPart(19)
if(true && ((it.publie))) {
printHtmlPart(20)
expressionOut.print(request.contextPath)
printHtmlPart(21)
expressionOut.print(it?.image)
printHtmlPart(22)
expressionOut.print(it?.nom)
printHtmlPart(23)
}
printHtmlPart(24)
expressionOut.print(it.nom)
printHtmlPart(25)
for( item in (it.produits) ) {
printHtmlPart(26)
expressionOut.print(item.typeProduit.nom)
printHtmlPart(27)
}
printHtmlPart(28)
for( item in (it.produits) ) {
printHtmlPart(29)
expressionOut.print(item.getMontantPhrase())
printHtmlPart(30)
}
printHtmlPart(28)
for( item in (it.produits) ) {
printHtmlPart(29)
expressionOut.print(item.getTauxPhrase())
printHtmlPart(30)
}
printHtmlPart(31)
expressionOut.print(lien)
printHtmlPart(32)
expressionOut.print(it.id)
printHtmlPart(33)
expressionOut.print(it.nomSEO)
printHtmlPart(34)
expressionOut.print(it.nomSEO)
printHtmlPart(35)
}
printHtmlPart(36)
}
else {
printHtmlPart(37)
}
printHtmlPart(38)
expressionOut.print(request.contextPath)
printHtmlPart(39)
expressionOut.print(request.contextPath)
printHtmlPart(40)
})
invokeTag('captureBody','sitemesh',172,[:],1)
printHtmlPart(41)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427289024378L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
