import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_user_formfi_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_formfi.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
invokeTag('textField','g',10,['value':(formulaireInstance?.nomUser),'class':("form-control"),'name':("nomUser"),'placeholder':("Saisir votre nom"),'required':("required")],-1)
printHtmlPart(1)
invokeTag('textField','g',16,['value':(formulaireInstance?.username),'class':("form-control"),'name':("username"),'placeholder':("Saisir votre adresse mail"),'required':("required")],-1)
printHtmlPart(2)
invokeTag('textField','g',23,['value':(formulaireInstance?.telephone),'class':("form-control"),'name':("telephone"),'placeholder':("Saisir votre numéro de téléphone"),'required':("required")],-1)
printHtmlPart(3)
invokeTag('textField','g',30,['value':(formulaireInstance?.nomEntreprise),'class':("form-control"),'name':("nomEntreprise"),'placeholder':("Votre société"),'required':("required")],-1)
printHtmlPart(4)
invokeTag('textField','g',36,['value':(formulaireInstance?.siren),'class':("form-control"),'name':("siren"),'placeholder':("Votre société")],-1)
printHtmlPart(5)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427218276780L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
