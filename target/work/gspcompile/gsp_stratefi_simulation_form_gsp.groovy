import stratefi.simulateur.Simulation
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_simulation_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/simulation/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'nom', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("simulation.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nom"),'value':(simulationInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'produit', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("simulation.produit.label"),'default':("Produit")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("produit"),'name':("produit.id"),'from':(stratefi.comparateur.Produit.list()),'optionKey':("id"),'value':(simulationInstance?.produit?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'planDeFinancement', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("simulation.planDeFinancement.label"),'default':("Plan De Financement")],-1)
printHtmlPart(6)
for( p in (simulationInstance?.planDeFinancement) ) {
printHtmlPart(7)
createTagBody(2, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',31,['controller':("planDeFinancement"),'action':("show"),'id':(p.id)],2)
printHtmlPart(8)
}
printHtmlPart(9)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'planDeFinancement.label', default: 'PlanDeFinancement')]))
})
invokeTag('link','g',34,['controller':("planDeFinancement"),'action':("create"),'params':(['simulation.id': simulationInstance?.id])],1)
printHtmlPart(10)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'coutVarInvestisseur', 'error'))
printHtmlPart(11)
invokeTag('message','g',43,['code':("simulation.coutVarInvestisseur.label"),'default':("Cout Var Investisseur")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("coutVarInvestisseur"),'value':(fieldValue(bean: simulationInstance, field: 'coutVarInvestisseur'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'coutVarEntreprise', 'error'))
printHtmlPart(12)
invokeTag('message','g',52,['code':("simulation.coutVarEntreprise.label"),'default':("Cout Var Entreprise")],-1)
printHtmlPart(2)
invokeTag('field','g',55,['name':("coutVarEntreprise"),'value':(fieldValue(bean: simulationInstance, field: 'coutVarEntreprise'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'coutFixeDebut', 'error'))
printHtmlPart(13)
invokeTag('message','g',61,['code':("simulation.coutFixeDebut.label"),'default':("Cout Fixe Debut")],-1)
printHtmlPart(2)
invokeTag('field','g',64,['name':("coutFixeDebut"),'value':(fieldValue(bean: simulationInstance, field: 'coutFixeDebut'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'coutFixeFin', 'error'))
printHtmlPart(14)
invokeTag('message','g',70,['code':("simulation.coutFixeFin.label"),'default':("Cout Fixe Fin")],-1)
printHtmlPart(2)
invokeTag('field','g',73,['name':("coutFixeFin"),'value':(fieldValue(bean: simulationInstance, field: 'coutFixeFin'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'montant', 'error'))
printHtmlPart(15)
invokeTag('message','g',79,['code':("simulation.montant.label"),'default':("Montant")],-1)
printHtmlPart(2)
invokeTag('field','g',82,['name':("montant"),'value':(fieldValue(bean: simulationInstance, field: 'montant'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'temps', 'error'))
printHtmlPart(16)
invokeTag('message','g',88,['code':("simulation.temps.label"),'default':("Temps")],-1)
printHtmlPart(2)
invokeTag('field','g',91,['name':("temps"),'value':(fieldValue(bean: simulationInstance, field: 'temps'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: simulationInstance, field: 'recurrent', 'error'))
printHtmlPart(17)
invokeTag('message','g',97,['code':("simulation.recurrent.label"),'default':("Recurrent")],-1)
printHtmlPart(2)
invokeTag('field','g',100,['name':("recurrent"),'value':(fieldValue(bean: simulationInstance, field: 'recurrent'))],-1)
printHtmlPart(18)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423788827056L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
