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
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'compte.label', default: 'Compte'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('message','g',10,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(4)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(5)
invokeTag('message','g',13,['code':("default.home.label")],-1)
printHtmlPart(6)
createTagBody(2, {->
invokeTag('message','g',14,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("list"),'action':("index")],2)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (compteInstance?.username)) {
printHtmlPart(13)
invokeTag('message','g',27,['code':("compte.username.label"),'default':("Username")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',29,['bean':(compteInstance),'field':("username")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (compteInstance?.password)) {
printHtmlPart(17)
invokeTag('message','g',36,['code':("compte.password.label"),'default':("Password")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',38,['bean':(compteInstance),'field':("password")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (compteInstance?.entreprise)) {
printHtmlPart(19)
invokeTag('message','g',45,['code':("compte.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(20)
createTagBody(3, {->
expressionOut.print(compteInstance?.entreprise?.encodeAsHTML())
})
invokeTag('link','g',47,['controller':("entreprise"),'action':("show"),'id':(compteInstance?.entreprise?.id)],3)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (compteInstance?.accountExpired)) {
printHtmlPart(21)
invokeTag('message','g',54,['code':("compte.accountExpired.label"),'default':("Account Expired")],-1)
printHtmlPart(22)
invokeTag('formatBoolean','g',56,['boolean':(compteInstance?.accountExpired)],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (compteInstance?.accountLocked)) {
printHtmlPart(23)
invokeTag('message','g',63,['code':("compte.accountLocked.label"),'default':("Account Locked")],-1)
printHtmlPart(24)
invokeTag('formatBoolean','g',65,['boolean':(compteInstance?.accountLocked)],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (compteInstance?.enabled)) {
printHtmlPart(25)
invokeTag('message','g',72,['code':("compte.enabled.label"),'default':("Enabled")],-1)
printHtmlPart(26)
invokeTag('formatBoolean','g',74,['boolean':(compteInstance?.enabled)],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (compteInstance?.passwordExpired)) {
printHtmlPart(27)
invokeTag('message','g',81,['code':("compte.passwordExpired.label"),'default':("Password Expired")],-1)
printHtmlPart(28)
invokeTag('formatBoolean','g',83,['boolean':(compteInstance?.passwordExpired)],-1)
printHtmlPart(15)
}
printHtmlPart(29)
createTagBody(2, {->
printHtmlPart(30)
createTagBody(3, {->
invokeTag('message','g',91,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',91,['class':("edit"),'action':("edit"),'resource':(compteInstance)],3)
printHtmlPart(31)
invokeTag('actionSubmit','g',92,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(32)
})
invokeTag('form','g',94,['url':([resource:compteInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(33)
})
invokeTag('captureBody','sitemesh',96,[:],1)
printHtmlPart(34)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421682620788L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
