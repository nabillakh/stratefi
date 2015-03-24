import stratefi.simulateur.Simulation
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_simulationshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/simulation/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',9,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',9,[:],2)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("{acteurInstance?.nomSEO} - Spécialiste $acteurInstance?.typeActeur.nom} pour PME et startup")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, {acteurInstance?.nomSEO}, $acteurInstance?.typeActeur.nom}, PME, startup")],-1)
printHtmlPart(4)
if(true && ("{acteurInstance?.publie}")) {
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("index")],-1)
printHtmlPart(4)
}
else {
printHtmlPart(5)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(6)
}
printHtmlPart(7)
invokeTag('javascript','g',19,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(8)
expressionOut.print(request.contextPath)
printHtmlPart(9)
expressionOut.print(request.contextPath)
printHtmlPart(10)
expressionOut.print(request.contextPath)
printHtmlPart(11)
})
invokeTag('captureHead','sitemesh',28,[:],1)
printHtmlPart(12)
createTagBody(1, {->
printHtmlPart(13)
invokeTag('message','g',30,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(14)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(15)
invokeTag('message','g',33,['code':("default.home.label")],-1)
printHtmlPart(16)
createTagBody(2, {->
invokeTag('message','g',34,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',34,['class':("list"),'action':("index")],2)
printHtmlPart(17)
createTagBody(2, {->
invokeTag('message','g',35,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',35,['class':("create"),'action':("create")],2)
printHtmlPart(18)
invokeTag('message','g',39,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(19)
if(true && (flash.message)) {
printHtmlPart(20)
expressionOut.print(flash.message)
printHtmlPart(21)
}
printHtmlPart(22)
if(true && (simulationInstance?.nom)) {
printHtmlPart(23)
invokeTag('message','g',47,['code':("simulation.nom.label"),'default':("Nom")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',49,['bean':(simulationInstance),'field':("nom")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.produit)) {
printHtmlPart(27)
invokeTag('message','g',56,['code':("simulation.produit.label"),'default':("Produit")],-1)
printHtmlPart(28)
createTagBody(3, {->
expressionOut.print(simulationInstance?.produit?.encodeAsHTML())
})
invokeTag('link','g',58,['controller':("produit"),'action':("show"),'id':(simulationInstance?.produit?.id)],3)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.planDeFinancement)) {
printHtmlPart(29)
invokeTag('message','g',65,['code':("simulation.planDeFinancement.label"),'default':("Plan De Financement")],-1)
printHtmlPart(30)
for( p in (simulationInstance.planDeFinancement) ) {
printHtmlPart(31)
createTagBody(4, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',68,['controller':("planDeFinancement"),'action':("show"),'id':(p.id)],4)
printHtmlPart(32)
}
printHtmlPart(33)
}
printHtmlPart(26)
if(true && (simulationInstance?.coutVarInvestisseur)) {
printHtmlPart(34)
invokeTag('message','g',76,['code':("simulation.coutVarInvestisseur.label"),'default':("Cout Var Investisseur")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',78,['bean':(simulationInstance),'field':("coutVarInvestisseur")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.coutVarEntreprise)) {
printHtmlPart(36)
invokeTag('message','g',85,['code':("simulation.coutVarEntreprise.label"),'default':("Cout Var Entreprise")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',87,['bean':(simulationInstance),'field':("coutVarEntreprise")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.coutFixeDebut)) {
printHtmlPart(38)
invokeTag('message','g',94,['code':("simulation.coutFixeDebut.label"),'default':("Cout Fixe Debut")],-1)
printHtmlPart(39)
invokeTag('fieldValue','g',96,['bean':(simulationInstance),'field':("coutFixeDebut")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.coutFixeFin)) {
printHtmlPart(40)
invokeTag('message','g',103,['code':("simulation.coutFixeFin.label"),'default':("Cout Fixe Fin")],-1)
printHtmlPart(41)
invokeTag('fieldValue','g',105,['bean':(simulationInstance),'field':("coutFixeFin")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.montant)) {
printHtmlPart(42)
invokeTag('message','g',112,['code':("simulation.montant.label"),'default':("Montant")],-1)
printHtmlPart(43)
invokeTag('fieldValue','g',114,['bean':(simulationInstance),'field':("montant")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.temps)) {
printHtmlPart(44)
invokeTag('message','g',121,['code':("simulation.temps.label"),'default':("Temps")],-1)
printHtmlPart(45)
invokeTag('fieldValue','g',123,['bean':(simulationInstance),'field':("temps")],-1)
printHtmlPart(25)
}
printHtmlPart(26)
if(true && (simulationInstance?.recurrent)) {
printHtmlPart(46)
invokeTag('message','g',130,['code':("simulation.recurrent.label"),'default':("Recurrent")],-1)
printHtmlPart(47)
invokeTag('fieldValue','g',132,['bean':(simulationInstance),'field':("recurrent")],-1)
printHtmlPart(25)
}
printHtmlPart(48)
createTagBody(2, {->
printHtmlPart(49)
createTagBody(3, {->
invokeTag('message','g',140,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',140,['class':("edit"),'action':("edit"),'resource':(simulationInstance)],3)
printHtmlPart(50)
invokeTag('actionSubmit','g',141,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(51)
})
invokeTag('form','g',143,['url':([resource:simulationInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(52)
createTagBody(2, {->
printHtmlPart(53)
invokeTag('render','g',150,['template':("plan")],-1)
printHtmlPart(54)
})
invokeTag('form','g',152,['url':([resource:plans, action:'save'])],2)
printHtmlPart(55)
expressionOut.print(request.contextPath)
printHtmlPart(56)
})
invokeTag('captureBody','sitemesh',180,[:],1)
printHtmlPart(57)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423832167019L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
