import entreprises.AnalyseFinanciere
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_analyseFinanciere_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/analyseFinanciere/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'entreprise', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("analyseFinanciere.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("entreprise"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'value':(analyseFinanciereInstance?.entreprise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'user', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("analyseFinanciere.user.label"),'default':("User")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("user"),'name':("user.id"),'from':(connection.User.list()),'optionKey':("id"),'value':(analyseFinanciereInstance?.user?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'date', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("analyseFinanciere.date.label"),'default':("Date")],-1)
printHtmlPart(6)
invokeTag('datePicker','g',28,['name':("date"),'precision':("day"),'value':(analyseFinanciereInstance?.date)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'mail', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("analyseFinanciere.mail.label"),'default':("Mail")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("mail"),'value':(analyseFinanciereInstance?.mail)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'nom', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("analyseFinanciere.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("nom"),'value':(analyseFinanciereInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: analyseFinanciereInstance, field: 'siren', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("analyseFinanciere.siren.label"),'default':("Siren")],-1)
printHtmlPart(2)
invokeTag('textField','g',55,['name':("siren"),'value':(analyseFinanciereInstance?.siren)],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426433638063L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
