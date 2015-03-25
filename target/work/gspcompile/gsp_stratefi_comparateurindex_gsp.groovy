import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_comparateurindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/comparateur/index.gsp" }
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
invokeTag('captureHead','sitemesh',37,[:],1)
printHtmlPart(10)
createTagBody(1, {->
printHtmlPart(11)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(12)
invokeTag('set','g',42,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(13)
}
printHtmlPart(13)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(12)
invokeTag('set','g',45,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
invokeTag('set','g',50,['var':("phrase"),'value':("Comparateur de financement pour PME et startup")],-1)
printHtmlPart(15)
invokeTag('render','g',51,['template':("/user/header")],-1)
printHtmlPart(16)
createTagBody(2, {->
printHtmlPart(17)
expressionOut.print(lien)
printHtmlPart(18)
})
invokeTag('ifLoggedIn','sec',67,[:],2)
printHtmlPart(19)
createTagBody(2, {->
printHtmlPart(20)
expressionOut.print(lien)
printHtmlPart(21)
})
invokeTag('ifNotLoggedIn','sec',70,[:],2)
printHtmlPart(20)
expressionOut.print(lien)
printHtmlPart(22)
createTagBody(2, {->
printHtmlPart(17)
expressionOut.print(lien)
printHtmlPart(23)
})
invokeTag('ifNotLoggedIn','sec',82,[:],2)
printHtmlPart(24)
invokeTag('render','g',98,['template':("/formulaire/formComparateur")],-1)
printHtmlPart(25)
invokeTag('render','g',112,['template':("/admin/menu")],-1)
printHtmlPart(26)
if(true && (acteurs)) {
printHtmlPart(27)
for( _it6919717 in (acteurs) ) {
changeItVariable(_it6919717)
printHtmlPart(28)
if(true && ((it.publie))) {
printHtmlPart(29)
expressionOut.print(request.contextPath)
printHtmlPart(30)
expressionOut.print(it?.image)
printHtmlPart(31)
expressionOut.print(it?.nom)
printHtmlPart(32)
}
printHtmlPart(33)
expressionOut.print(it.nom)
printHtmlPart(34)
for( item in (it.produits) ) {
printHtmlPart(35)
expressionOut.print(item.typeProduit.nom)
printHtmlPart(36)
}
printHtmlPart(37)
for( item in (it.produits) ) {
printHtmlPart(38)
expressionOut.print(item.getMontantPhrase())
printHtmlPart(39)
}
printHtmlPart(37)
for( item in (it.produits) ) {
printHtmlPart(38)
expressionOut.print(item.getTauxPhrase())
printHtmlPart(39)
}
printHtmlPart(40)
expressionOut.print(lien)
printHtmlPart(41)
expressionOut.print(it.id)
printHtmlPart(42)
expressionOut.print(it.nomSEO)
printHtmlPart(43)
expressionOut.print(it.nomSEO)
printHtmlPart(44)
}
printHtmlPart(45)
}
else {
printHtmlPart(46)
}
printHtmlPart(47)
expressionOut.print(request.contextPath)
printHtmlPart(48)
expressionOut.print(request.contextPath)
printHtmlPart(49)
})
invokeTag('captureBody','sitemesh',215,[:],1)
printHtmlPart(50)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427294776397L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
