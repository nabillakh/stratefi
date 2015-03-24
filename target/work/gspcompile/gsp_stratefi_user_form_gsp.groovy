import connection.User
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
expressionOut.print(hasErrors(bean: userInstance, field: 'username', 'error'))
printHtmlPart(1)
invokeTag('message','g',10,['code':("user.username.label"),'default':("Username")],-1)
printHtmlPart(2)
invokeTag('textField','g',14,['name':("username"),'class':("form-control"),'required':("required"),'value':(userInstance?.username)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'password', 'error'))
printHtmlPart(4)
invokeTag('message','g',21,['code':("user.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',25,['name':("password"),'class':("form-control"),'required':("required"),'value':(userInstance?.password)],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: userInstance, field: 'entreprise', 'error'))
printHtmlPart(6)
invokeTag('message','g',33,['code':("user.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(7)
invokeTag('select','g',37,['id':("e1"),'class':("form-control populate"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'value':(userInstance?.entreprise?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'nom', 'error'))
printHtmlPart(8)
invokeTag('message','g',44,['code':("user.nom.label"),'default':("Nom")],-1)
printHtmlPart(7)
invokeTag('textField','g',48,['name':("nom"),'value':(userInstance?.nom),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'prenom', 'error'))
printHtmlPart(9)
invokeTag('message','g',55,['code':("user.prenom.label"),'default':("Prenom")],-1)
printHtmlPart(7)
invokeTag('textField','g',59,['name':("prenom"),'value':(userInstance?.prenom),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'telephone', 'error'))
printHtmlPart(10)
invokeTag('message','g',66,['code':("user.telephone.label"),'default':("Telephone")],-1)
printHtmlPart(7)
invokeTag('textField','g',70,['name':("telephone"),'value':(userInstance?.telephone),'class':("form-control")],-1)
printHtmlPart(11)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427115155263L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
