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
invokeTag('set','g',24,['var':("phrase"),'value':("Tableau de bord de la société ${userInstance.entreprise?.nom}")],-1)
printHtmlPart(8)
invokeTag('render','g',25,['template':("header")],-1)
printHtmlPart(9)
expressionOut.print(lien)
printHtmlPart(10)
expressionOut.print(userInstance.entreprise?.nom)
printHtmlPart(11)
if(true && (userInstance.entreprise?.demandes)) {
printHtmlPart(12)
expressionOut.print(userInstance.entreprise?.demandes?.size())
printHtmlPart(13)
invokeTag('sortableColumn','g',54,['property':("nom"),'title':(message(code: 'demande.nom.label', default: 'Nom'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',55,['property':("type"),'title':(message(code: 'demande.nom.label', default: 'Type'))],-1)
printHtmlPart(15)
invokeTag('sortableColumn','g',58,['property':("date"),'title':(message(code: 'demande.nom.label', default: 'Date de la demande'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',59,['property':("montantRecherche"),'title':(message(code: 'demande.nom.label', default: 'Montant recherché'))],-1)
printHtmlPart(16)
loop:{
int i = 0
for( demandeInstance in (userInstance.entreprise?.demandes) ) {
printHtmlPart(17)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(18)
expressionOut.print(i)
printHtmlPart(19)
expressionOut.print(i)
printHtmlPart(20)
expressionOut.print(i)
printHtmlPart(21)
expressionOut.print(i)
printHtmlPart(19)
expressionOut.print(i)
printHtmlPart(20)
expressionOut.print(i)
printHtmlPart(22)
createTagBody(4, {->
expressionOut.print(fieldValue(bean: demandeInstance, field: "nom"))
})
invokeTag('link','g',73,['action':("show"),'id':(demandeInstance.id)],4)
printHtmlPart(23)
expressionOut.print(demandeInstance.type?.nom)
printHtmlPart(24)
invokeTag('formatDate','g',78,['format':("dd/MM/yyyy"),'date':(demandeInstance?.date)],-1)
printHtmlPart(25)
expressionOut.print(Math.round(demandeInstance.montantRecherche / 1000))
printHtmlPart(26)
expressionOut.print(demandeInstance.etat?.nom)
printHtmlPart(27)
expressionOut.print(i)
printHtmlPart(28)
expressionOut.print(Math.round(demandeInstance.montantRecherche / 1000))
printHtmlPart(29)
expressionOut.print(demandeInstance?.reponses?.size())
printHtmlPart(30)
expressionOut.print(demandeInstance?.etat?.nom)
printHtmlPart(31)
expressionOut.print(demandeInstance?.nom)
printHtmlPart(32)
expressionOut.print(demandeInstance.type?.nom)
printHtmlPart(33)
expressionOut.print(demandeInstance?.description)
printHtmlPart(34)
expressionOut.print(demandeInstance?.besoinMarche)
printHtmlPart(35)
expressionOut.print(demandeInstance?.besoinMarche)
printHtmlPart(36)
expressionOut.print(lien)
printHtmlPart(37)
expressionOut.print(demandeInstance.id)
printHtmlPart(38)
expressionOut.print(lien)
printHtmlPart(39)
expressionOut.print(demandeInstance.id)
printHtmlPart(40)
expressionOut.print(demandeInstance.nom)
printHtmlPart(41)
i++
}
}
printHtmlPart(42)
}
else {
printHtmlPart(43)
expressionOut.print(lien)
printHtmlPart(44)
}
printHtmlPart(45)
createTagBody(2, {->
printHtmlPart(46)
invokeTag('render','g',251,['template':("formFinancement")],-1)
printHtmlPart(47)
invokeTag('submitButton','g',254,['name':("create"),'class':("btn btn-default"),'value':("Enregistrer")],-1)
printHtmlPart(48)
})
invokeTag('form','g',256,['url':([resource:demandeInstance, action:'saveDemande', controller : 'user']),'class':("form-horizontal")],2)
printHtmlPart(49)
expressionOut.print(userInstance?.entreprise?.demandes?.size())
printHtmlPart(50)
})
invokeTag('captureBody','sitemesh',321,[:],1)
printHtmlPart(51)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427123588929L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
