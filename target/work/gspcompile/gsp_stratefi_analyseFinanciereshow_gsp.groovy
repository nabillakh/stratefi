import entreprises.AnalyseFinanciere
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_analyseFinanciereshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/analyseFinanciere/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'analyseFinanciere.label', default: 'AnalyseFinanciere'))],-1)
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
if(true && (analyseFinanciereInstance?.entreprise)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("analyseFinanciere.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(analyseFinanciereInstance?.entreprise?.encodeAsHTML())
})
invokeTag('link','g',30,['controller':("entreprise"),'action':("show"),'id':(analyseFinanciereInstance?.entreprise?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (analyseFinanciereInstance?.user)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("analyseFinanciere.user.label"),'default':("User")],-1)
printHtmlPart(19)
createTagBody(3, {->
expressionOut.print(analyseFinanciereInstance?.user?.encodeAsHTML())
})
invokeTag('link','g',39,['controller':("user"),'action':("show"),'id':(analyseFinanciereInstance?.user?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (analyseFinanciereInstance?.date)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("analyseFinanciere.date.label"),'default':("Date")],-1)
printHtmlPart(21)
invokeTag('formatDate','g',48,['date':(analyseFinanciereInstance?.date)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (analyseFinanciereInstance?.mail)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("analyseFinanciere.mail.label"),'default':("Mail")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(analyseFinanciereInstance),'field':("mail")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (analyseFinanciereInstance?.nom)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("analyseFinanciere.nom.label"),'default':("Nom")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(analyseFinanciereInstance),'field':("nom")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (analyseFinanciereInstance?.siren)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("analyseFinanciere.siren.label"),'default':("Siren")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(analyseFinanciereInstance),'field':("siren")],-1)
printHtmlPart(16)
}
printHtmlPart(28)
createTagBody(2, {->
printHtmlPart(29)
createTagBody(3, {->
invokeTag('message','g',83,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',83,['class':("edit"),'action':("edit"),'resource':(analyseFinanciereInstance)],3)
printHtmlPart(30)
invokeTag('actionSubmit','g',84,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(31)
})
invokeTag('form','g',86,['url':([resource:analyseFinanciereInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',88,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426433637454L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
