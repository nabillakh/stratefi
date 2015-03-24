import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_login_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/login/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
invokeTag('message','g',9,['code':("user.username.label"),'default':("Adresse email")],-1)
printHtmlPart(1)
invokeTag('textField','g',13,['name':("username"),'value':(userInstance?.username),'class':("form-control"),'required':("required")],-1)
printHtmlPart(2)
invokeTag('message','g',22,['code':("user.password.label"),'default':("Mot de passe")],-1)
printHtmlPart(1)
invokeTag('textField','g',26,['name':("password"),'value':(userInstance?.password),'class':("form-control"),'required':("required")],-1)
printHtmlPart(2)
invokeTag('message','g',35,['code':("user.password.label"),'default':("Mot de passe *")],-1)
printHtmlPart(1)
invokeTag('textField','g',39,['name':("password2"),'class':("form-control"),'required':("required")],-1)
printHtmlPart(3)
invokeTag('message','g',54,['code':("user.nom.label"),'default':("Nom")],-1)
printHtmlPart(1)
invokeTag('textField','g',58,['name':("nom"),'value':(userInstance?.nom),'class':("form-control"),'required':("required")],-1)
printHtmlPart(4)
invokeTag('message','g',68,['code':("user.prenom.label"),'default':("Prenom")],-1)
printHtmlPart(1)
invokeTag('textField','g',72,['name':("prenom"),'value':(userInstance?.prenom),'class':("form-control")],-1)
printHtmlPart(5)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426498189166L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
