import stratefi.comparateur.TypeActeur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_typeActeur_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/typeActeur/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: typeActeurInstance, field: 'nom', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("typeActeur.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nom"),'value':(typeActeurInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: typeActeurInstance, field: 'numero', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("typeActeur.numero.label"),'default':("Numero")],-1)
printHtmlPart(5)
invokeTag('field','g',19,['name':("numero"),'value':(fieldValue(bean: typeActeurInstance, field: 'numero')),'required':("")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421142203119L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
