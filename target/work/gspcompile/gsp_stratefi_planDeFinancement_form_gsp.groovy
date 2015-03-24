import compte.PlanDeFinancement
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_planDeFinancement_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/planDeFinancement/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'capaciteDAutofinancement', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("planDeFinancement.capaciteDAutofinancement.label"),'default':("Capacite DA utofinancement")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("capaciteDAutofinancement"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'capaciteDAutofinancement'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'cessionDImmobilisations', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("planDeFinancement.cessionDImmobilisations.label"),'default':("Cession DI mmobilisations")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['name':("cessionDImmobilisations"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'cessionDImmobilisations'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'augmentationCapital', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("planDeFinancement.augmentationCapital.label"),'default':("Augmentation Capital")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("augmentationCapital"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'augmentationCapital'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'subventions', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("planDeFinancement.subventions.label"),'default':("Subventions")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("subventions"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'subventions'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'emprunts', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("planDeFinancement.emprunts.label"),'default':("Emprunts")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("emprunts"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'emprunts'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'dividendesVerses', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("planDeFinancement.dividendesVerses.label"),'default':("Dividendes Verses")],-1)
printHtmlPart(2)
invokeTag('field','g',55,['name':("dividendesVerses"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'dividendesVerses'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'investissements', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("planDeFinancement.investissements.label"),'default':("Investissements")],-1)
printHtmlPart(2)
invokeTag('field','g',64,['name':("investissements"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'investissements'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'remboursementCapitalDesEmprunts', 'error'))
printHtmlPart(10)
invokeTag('message','g',70,['code':("planDeFinancement.remboursementCapitalDesEmprunts.label"),'default':("Remboursement Capital Des Emprunts")],-1)
printHtmlPart(2)
invokeTag('field','g',73,['name':("remboursementCapitalDesEmprunts"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'remboursementCapitalDesEmprunts'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'variationDuBFRE', 'error'))
printHtmlPart(11)
invokeTag('message','g',79,['code':("planDeFinancement.variationDuBFRE.label"),'default':("Variation Du BFRE")],-1)
printHtmlPart(2)
invokeTag('field','g',82,['name':("variationDuBFRE"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'variationDuBFRE'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'annee', 'error'))
printHtmlPart(12)
invokeTag('message','g',88,['code':("planDeFinancement.annee.label"),'default':("Annee")],-1)
printHtmlPart(13)
invokeTag('field','g',91,['name':("annee"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'annee')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'mois', 'error'))
printHtmlPart(14)
invokeTag('message','g',97,['code':("planDeFinancement.mois.label"),'default':("Mois")],-1)
printHtmlPart(13)
invokeTag('field','g',100,['name':("mois"),'value':(fieldValue(bean: planDeFinancementInstance, field: 'mois')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: planDeFinancementInstance, field: 'simulation', 'error'))
printHtmlPart(15)
invokeTag('message','g',106,['code':("planDeFinancement.simulation.label"),'default':("Simulation")],-1)
printHtmlPart(13)
invokeTag('select','g',109,['id':("simulation"),'name':("simulation.id"),'from':(stratefi.simulateur.Simulation.list()),'optionKey':("id"),'required':(""),'value':(planDeFinancementInstance?.simulation?.id),'class':("many-to-one")],-1)
printHtmlPart(16)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423788829493L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
