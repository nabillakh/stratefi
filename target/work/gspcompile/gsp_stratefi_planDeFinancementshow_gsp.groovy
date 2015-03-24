import compte.PlanDeFinancement
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_planDeFinancementshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/planDeFinancement/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'planDeFinancement.label', default: 'PlanDeFinancement'))],-1)
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
if(true && (planDeFinancementInstance?.capaciteDAutofinancement)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("planDeFinancement.capaciteDAutofinancement.label"),'default':("Capacite DA utofinancement")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(planDeFinancementInstance),'field':("capaciteDAutofinancement")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.cessionDImmobilisations)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("planDeFinancement.cessionDImmobilisations.label"),'default':("Cession DI mmobilisations")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(planDeFinancementInstance),'field':("cessionDImmobilisations")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.augmentationCapital)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("planDeFinancement.augmentationCapital.label"),'default':("Augmentation Capital")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(planDeFinancementInstance),'field':("augmentationCapital")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.subventions)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("planDeFinancement.subventions.label"),'default':("Subventions")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(planDeFinancementInstance),'field':("subventions")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.emprunts)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("planDeFinancement.emprunts.label"),'default':("Emprunts")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(planDeFinancementInstance),'field':("emprunts")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.dividendesVerses)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("planDeFinancement.dividendesVerses.label"),'default':("Dividendes Verses")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(planDeFinancementInstance),'field':("dividendesVerses")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.investissements)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("planDeFinancement.investissements.label"),'default':("Investissements")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(planDeFinancementInstance),'field':("investissements")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.remboursementCapitalDesEmprunts)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("planDeFinancement.remboursementCapitalDesEmprunts.label"),'default':("Remboursement Capital Des Emprunts")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(planDeFinancementInstance),'field':("remboursementCapitalDesEmprunts")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.variationDuBFRE)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("planDeFinancement.variationDuBFRE.label"),'default':("Variation Du BFRE")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(planDeFinancementInstance),'field':("variationDuBFRE")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.annee)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("planDeFinancement.annee.label"),'default':("Annee")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',111,['bean':(planDeFinancementInstance),'field':("annee")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.mois)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("planDeFinancement.mois.label"),'default':("Mois")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(planDeFinancementInstance),'field':("mois")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (planDeFinancementInstance?.simulation)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("planDeFinancement.simulation.label"),'default':("Simulation")],-1)
printHtmlPart(39)
createTagBody(3, {->
expressionOut.print(planDeFinancementInstance?.simulation?.encodeAsHTML())
})
invokeTag('link','g',129,['controller':("simulation"),'action':("show"),'id':(planDeFinancementInstance?.simulation?.id)],3)
printHtmlPart(16)
}
printHtmlPart(40)
createTagBody(2, {->
printHtmlPart(41)
createTagBody(3, {->
invokeTag('message','g',137,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',137,['class':("edit"),'action':("edit"),'resource':(planDeFinancementInstance)],3)
printHtmlPart(42)
invokeTag('actionSubmit','g',138,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(43)
})
invokeTag('form','g',140,['url':([resource:planDeFinancementInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(44)
})
invokeTag('captureBody','sitemesh',142,[:],1)
printHtmlPart(45)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423788827923L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
