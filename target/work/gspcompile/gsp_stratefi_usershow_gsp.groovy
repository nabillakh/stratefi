import connection.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_usershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/show.gsp" }
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
expressionOut.print(lien)
printHtmlPart(8)
expressionOut.print(userInstance.entreprise?.nom)
printHtmlPart(9)
expressionOut.print(lien)
printHtmlPart(10)
expressionOut.print(userInstance.id)
printHtmlPart(11)
expressionOut.print(lien)
printHtmlPart(10)
expressionOut.print(userInstance.id)
printHtmlPart(12)
expressionOut.print(lien)
printHtmlPart(13)
expressionOut.print(lien)
printHtmlPart(10)
expressionOut.print(userInstance.id)
printHtmlPart(14)
expressionOut.print(userInstance.entreprise?.nom)
printHtmlPart(15)
if(true && (userInstance.entreprise?.demandes)) {
printHtmlPart(16)
expressionOut.print(userInstance.entreprise?.demandes?.size())
printHtmlPart(17)
invokeTag('sortableColumn','g',104,['property':("nom"),'title':(message(code: 'demande.nom.label', default: 'Nom'))],-1)
printHtmlPart(18)
invokeTag('sortableColumn','g',105,['property':("type"),'title':(message(code: 'demande.nom.label', default: 'Type'))],-1)
printHtmlPart(19)
invokeTag('sortableColumn','g',108,['property':("date"),'title':(message(code: 'demande.nom.label', default: 'Date de la demande'))],-1)
printHtmlPart(18)
invokeTag('sortableColumn','g',109,['property':("montantRecherche"),'title':(message(code: 'demande.nom.label', default: 'Montant recherché'))],-1)
printHtmlPart(20)
loop:{
int i = 0
for( demandeInstance in (userInstance.entreprise?.demandes) ) {
printHtmlPart(21)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(22)
expressionOut.print(i)
printHtmlPart(23)
expressionOut.print(i)
printHtmlPart(24)
expressionOut.print(i)
printHtmlPart(25)
expressionOut.print(i)
printHtmlPart(23)
expressionOut.print(i)
printHtmlPart(24)
expressionOut.print(i)
printHtmlPart(26)
createTagBody(4, {->
expressionOut.print(fieldValue(bean: demandeInstance, field: "nom"))
})
invokeTag('link','g',123,['action':("show"),'id':(demandeInstance.id)],4)
printHtmlPart(27)
expressionOut.print(demandeInstance.type?.nom)
printHtmlPart(28)
invokeTag('formatDate','g',128,['format':("dd/MM/yyyy"),'date':(demandeInstance?.date)],-1)
printHtmlPart(29)
expressionOut.print(fieldValue(bean: demandeInstance, field: "montantRecherche"))
printHtmlPart(30)
expressionOut.print(demandeInstance.etat?.nom)
printHtmlPart(31)
expressionOut.print(i)
printHtmlPart(32)
expressionOut.print(Math.round(demandeInstance.montantRecherche / 1000))
printHtmlPart(33)
expressionOut.print(demandeInstance.reponses.size())
printHtmlPart(34)
expressionOut.print(demandeInstance?.nom)
printHtmlPart(35)
expressionOut.print(demandeInstance.type?.nom)
printHtmlPart(36)
expressionOut.print(demandeInstance?.description)
printHtmlPart(37)
expressionOut.print(demandeInstance?.besoinMarche)
printHtmlPart(38)
expressionOut.print(demandeInstance?.besoinMarche)
printHtmlPart(39)
expressionOut.print(lien)
printHtmlPart(40)
expressionOut.print(demandeInstance.id)
printHtmlPart(41)
expressionOut.print(lien)
printHtmlPart(42)
expressionOut.print(demandeInstance.id)
printHtmlPart(43)
expressionOut.print(demandeInstance.nom)
printHtmlPart(44)
i++
}
}
printHtmlPart(45)
}
else {
printHtmlPart(46)
expressionOut.print(lien)
printHtmlPart(47)
}
printHtmlPart(48)
for( typeProjetInstance in (stratefi.comparateur.TypeProjet.list()) ) {
printHtmlPart(49)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(50)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(51)
}
printHtmlPart(52)
expressionOut.print(userInstance.entreprise.demandes?.size())
printHtmlPart(53)
})
invokeTag('captureBody','sitemesh',401,[:],1)
printHtmlPart(54)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427123589085L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
