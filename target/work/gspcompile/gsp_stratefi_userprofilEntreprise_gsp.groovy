import connection.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_userprofilEntreprise_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/profilEntreprise.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',12,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(6)
invokeTag('set','g',17,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(0)
}
printHtmlPart(0)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(6)
invokeTag('set','g',20,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(0)
}
printHtmlPart(7)
invokeTag('set','g',24,['var':("phrase"),'value':("Bienvenue sur votre tableau de bord.")],-1)
printHtmlPart(8)
invokeTag('render','g',25,['template':("header")],-1)
printHtmlPart(9)
createTagBody(2, {->
printHtmlPart(10)
expressionOut.print(lien)
printHtmlPart(11)
})
invokeTag('ifLoggedIn','sec',39,[:],2)
printHtmlPart(12)
createTagBody(2, {->
printHtmlPart(13)
expressionOut.print(lien)
printHtmlPart(14)
})
invokeTag('ifNotLoggedIn','sec',42,[:],2)
printHtmlPart(15)
createTagBody(2, {->
printHtmlPart(10)
expressionOut.print(lien)
printHtmlPart(16)
})
invokeTag('ifNotLoggedIn','sec',53,[:],2)
printHtmlPart(17)
expressionOut.print(lien)
printHtmlPart(18)
invokeTag('render','g',89,['template':("/admin/menu")],-1)
printHtmlPart(19)
expressionOut.print(userInstance.entreprise?.nom)
printHtmlPart(20)
if(true && (userInstance.entreprise?.demandes)) {
printHtmlPart(21)
expressionOut.print(userInstance.entreprise?.demandes?.size())
printHtmlPart(22)
invokeTag('sortableColumn','g',113,['property':("nom"),'title':(message(code: 'demande.nom.label', default: 'Nom'))],-1)
printHtmlPart(23)
invokeTag('sortableColumn','g',114,['property':("type"),'title':(message(code: 'demande.nom.label', default: 'Type'))],-1)
printHtmlPart(24)
invokeTag('sortableColumn','g',117,['property':("date"),'title':(message(code: 'demande.nom.label', default: 'Date de la demande'))],-1)
printHtmlPart(23)
invokeTag('sortableColumn','g',118,['property':("montantRecherche"),'title':(message(code: 'demande.nom.label', default: 'Montant recherché'))],-1)
printHtmlPart(25)
loop:{
int i = 0
for( demandeInstance in (userInstance.entreprise?.demandes) ) {
printHtmlPart(26)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(27)
expressionOut.print(i)
printHtmlPart(28)
expressionOut.print(i)
printHtmlPart(29)
expressionOut.print(i)
printHtmlPart(30)
expressionOut.print(i)
printHtmlPart(28)
expressionOut.print(i)
printHtmlPart(29)
expressionOut.print(i)
printHtmlPart(31)
createTagBody(4, {->
expressionOut.print(fieldValue(bean: demandeInstance, field: "nom"))
})
invokeTag('link','g',132,['action':("show"),'id':(demandeInstance.id)],4)
printHtmlPart(32)
expressionOut.print(demandeInstance.type?.nom)
printHtmlPart(33)
invokeTag('formatDate','g',137,['format':("dd/MM/yyyy"),'date':(demandeInstance?.date)],-1)
printHtmlPart(34)
expressionOut.print(Math.round(demandeInstance.montantRecherche / 1000))
printHtmlPart(35)
expressionOut.print(demandeInstance.etat?.nom)
printHtmlPart(36)
expressionOut.print(i)
printHtmlPart(37)
expressionOut.print(Math.round(demandeInstance.montantRecherche / 1000))
printHtmlPart(38)
expressionOut.print(demandeInstance?.reponses?.size())
printHtmlPart(39)
expressionOut.print(demandeInstance?.etat?.nom)
printHtmlPart(40)
expressionOut.print(demandeInstance?.nom)
printHtmlPart(41)
expressionOut.print(demandeInstance.type?.nom)
printHtmlPart(42)
expressionOut.print(demandeInstance?.description)
printHtmlPart(43)
expressionOut.print(demandeInstance?.besoinMarche)
printHtmlPart(44)
expressionOut.print(demandeInstance?.besoinMarche)
printHtmlPart(45)
expressionOut.print(lien)
printHtmlPart(46)
expressionOut.print(demandeInstance.id)
printHtmlPart(47)
expressionOut.print(lien)
printHtmlPart(48)
expressionOut.print(demandeInstance.id)
printHtmlPart(49)
expressionOut.print(demandeInstance.nom)
printHtmlPart(50)
i++
}
}
printHtmlPart(51)
}
else {
printHtmlPart(52)
expressionOut.print(lien)
printHtmlPart(53)
}
printHtmlPart(54)
createTagBody(2, {->
printHtmlPart(55)
invokeTag('render','g',280,['template':("formFinancement")],-1)
printHtmlPart(56)
invokeTag('submitButton','g',283,['name':("create"),'class':("btn btn-default"),'value':("Enregistrer")],-1)
printHtmlPart(57)
})
invokeTag('form','g',285,['url':([resource:demandeInstance, action:'saveDemande', controller : 'user']),'class':("form-horizontal")],2)
printHtmlPart(58)
expressionOut.print(userInstance?.entreprise?.demandes?.size())
printHtmlPart(59)
})
invokeTag('captureBody','sitemesh',350,[:],1)
printHtmlPart(60)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427294930842L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
