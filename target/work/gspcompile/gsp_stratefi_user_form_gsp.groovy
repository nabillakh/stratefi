import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_user_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: compteInstance, field: 'username', 'error'))
printHtmlPart(1)
invokeTag('message','g',5,['code':("compte.username.label"),'default':("Username")],-1)
printHtmlPart(2)
invokeTag('textField','g',8,['name':("username"),'required':(""),'value':(compteInstance?.username)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: compteInstance, field: 'password', 'error'))
printHtmlPart(4)
invokeTag('message','g',14,['code':("compte.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',17,['name':("password"),'required':(""),'value':(compteInstance?.password)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: compteInstance, field: 'entreprise', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("compte.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(6)
invokeTag('select','g',26,['id':("entreprise"),'name':("entreprise.id"),'from':(businessplan.entreprises.Entreprise.list()),'optionKey':("id"),'value':(compteInstance?.entreprise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: compteInstance, field: 'accountExpired', 'error'))
printHtmlPart(7)
invokeTag('message','g',32,['code':("compte.accountExpired.label"),'default':("Account Expired")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',35,['name':("accountExpired"),'value':(compteInstance?.accountExpired)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: compteInstance, field: 'accountLocked', 'error'))
printHtmlPart(8)
invokeTag('message','g',41,['code':("compte.accountLocked.label"),'default':("Account Locked")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',44,['name':("accountLocked"),'value':(compteInstance?.accountLocked)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: compteInstance, field: 'enabled', 'error'))
printHtmlPart(9)
invokeTag('message','g',50,['code':("compte.enabled.label"),'default':("Enabled")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',53,['name':("enabled"),'value':(compteInstance?.enabled)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: compteInstance, field: 'passwordExpired', 'error'))
printHtmlPart(10)
invokeTag('message','g',59,['code':("compte.passwordExpired.label"),'default':("Password Expired")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',62,['name':("passwordExpired"),'value':(compteInstance?.passwordExpired)],-1)
printHtmlPart(11)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1420447807456L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
