import stratefi.comparateur.Formulaire
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_formulaireshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/formulaire/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'formulaire.label', default: 'Formulaire'))],-1)
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
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (formulaireInstance?.titre)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("formulaire.titre.label"),'default':("Titre")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(formulaireInstance),'field':("titre")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.keywords)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("formulaire.keywords.label"),'default':("Keywords")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(formulaireInstance),'field':("keywords")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.textePublie)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("formulaire.textePublie.label"),'default':("Texte Publie")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(formulaireInstance),'field':("textePublie")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.publie)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("formulaire.publie.label"),'default':("Publie")],-1)
printHtmlPart(23)
invokeTag('formatBoolean','g',57,['boolean':(formulaireInstance?.publie)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.typeProduit)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("formulaire.typeProduit.label"),'default':("Type Produit")],-1)
printHtmlPart(25)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.typeProduit?.encodeAsHTML())
})
invokeTag('link','g',66,['controller':("typeProduit"),'action':("show"),'id':(formulaireInstance?.typeProduit?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.nom)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("formulaire.nom.label"),'default':("Nom")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(formulaireInstance),'field':("nom")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.description)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("formulaire.description.label"),'default':("Description")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(formulaireInstance),'field':("description")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.nombreJoue)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("formulaire.nombreJoue.label"),'default':("Nombre Joue")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(formulaireInstance),'field':("nombreJoue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.nomProjet)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("formulaire.nomProjet.label"),'default':("Nom Projet")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(formulaireInstance),'field':("nomProjet")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.typeProjet)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("formulaire.typeProjet.label"),'default':("Type Projet")],-1)
printHtmlPart(35)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.typeProjet?.encodeAsHTML())
})
invokeTag('link','g',111,['controller':("typeProjet"),'action':("show"),'id':(formulaireInstance?.typeProjet?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.montantRecherche)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("formulaire.montantRecherche.label"),'default':("Montant Recherche")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(formulaireInstance),'field':("montantRecherche")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.dureeBesoin)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("formulaire.dureeBesoin.label"),'default':("Duree Besoin")],-1)
printHtmlPart(39)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.dureeBesoin?.encodeAsHTML())
})
invokeTag('link','g',129,['controller':("dureeBesoin"),'action':("show"),'id':(formulaireInstance?.dureeBesoin?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.urgenceBesoin)) {
printHtmlPart(40)
invokeTag('message','g',136,['code':("formulaire.urgenceBesoin.label"),'default':("Urgence Besoin")],-1)
printHtmlPart(41)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.urgenceBesoin?.encodeAsHTML())
})
invokeTag('link','g',138,['controller':("urgenceBesoin"),'action':("show"),'id':(formulaireInstance?.urgenceBesoin?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.nomEntreprise)) {
printHtmlPart(42)
invokeTag('message','g',145,['code':("formulaire.nomEntreprise.label"),'default':("Nom Entreprise")],-1)
printHtmlPart(43)
invokeTag('fieldValue','g',147,['bean':(formulaireInstance),'field':("nomEntreprise")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.siren)) {
printHtmlPart(44)
invokeTag('message','g',154,['code':("formulaire.siren.label"),'default':("Siren")],-1)
printHtmlPart(45)
invokeTag('fieldValue','g',156,['bean':(formulaireInstance),'field':("siren")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.secteur)) {
printHtmlPart(46)
invokeTag('message','g',163,['code':("formulaire.secteur.label"),'default':("Secteur")],-1)
printHtmlPart(47)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.secteur?.encodeAsHTML())
})
invokeTag('link','g',165,['controller':("secteur"),'action':("show"),'id':(formulaireInstance?.secteur?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.proprieteMachine)) {
printHtmlPart(48)
invokeTag('message','g',172,['code':("formulaire.proprieteMachine.label"),'default':("Propriete Machine")],-1)
printHtmlPart(49)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.proprieteMachine?.encodeAsHTML())
})
invokeTag('link','g',174,['controller':("proprieteMachine"),'action':("show"),'id':(formulaireInstance?.proprieteMachine?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.proprieteLocaux)) {
printHtmlPart(50)
invokeTag('message','g',181,['code':("formulaire.proprieteLocaux.label"),'default':("Propriete Locaux")],-1)
printHtmlPart(51)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.proprieteLocaux?.encodeAsHTML())
})
invokeTag('link','g',183,['controller':("proprieteLocaux"),'action':("show"),'id':(formulaireInstance?.proprieteLocaux?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.croissanceCa)) {
printHtmlPart(52)
invokeTag('message','g',190,['code':("formulaire.croissanceCa.label"),'default':("Croissance Ca")],-1)
printHtmlPart(53)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.croissanceCa?.encodeAsHTML())
})
invokeTag('link','g',192,['controller':("croissanceCa"),'action':("show"),'id':(formulaireInstance?.croissanceCa?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.volumeClient)) {
printHtmlPart(54)
invokeTag('message','g',199,['code':("formulaire.volumeClient.label"),'default':("Volume Client")],-1)
printHtmlPart(55)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.volumeClient?.encodeAsHTML())
})
invokeTag('link','g',201,['controller':("volumeClient"),'action':("show"),'id':(formulaireInstance?.volumeClient?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.creanceClient)) {
printHtmlPart(56)
invokeTag('message','g',208,['code':("formulaire.creanceClient.label"),'default':("Creance Client")],-1)
printHtmlPart(57)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.creanceClient?.encodeAsHTML())
})
invokeTag('link','g',210,['controller':("creanceClient"),'action':("show"),'id':(formulaireInstance?.creanceClient?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (formulaireInstance?.marchandise)) {
printHtmlPart(58)
invokeTag('message','g',217,['code':("formulaire.marchandise.label"),'default':("Marchandise")],-1)
printHtmlPart(59)
createTagBody(3, {->
expressionOut.print(formulaireInstance?.marchandise?.encodeAsHTML())
})
invokeTag('link','g',219,['controller':("marchandise"),'action':("show"),'id':(formulaireInstance?.marchandise?.id)],3)
printHtmlPart(16)
}
printHtmlPart(60)
createTagBody(2, {->
printHtmlPart(61)
createTagBody(3, {->
invokeTag('message','g',227,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',227,['class':("edit"),'action':("edit"),'resource':(formulaireInstance)],3)
printHtmlPart(62)
invokeTag('actionSubmit','g',228,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(63)
})
invokeTag('form','g',230,['url':([resource:formulaireInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(64)
})
invokeTag('captureBody','sitemesh',232,[:],1)
printHtmlPart(65)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426775960082L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
