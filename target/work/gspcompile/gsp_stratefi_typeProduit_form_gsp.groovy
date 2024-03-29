import stratefi.comparateur.TypeProduit
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_typeProduit_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/typeProduit/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: typeProduitInstance, field: 'nom', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("typeProduit.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nom"),'value':(typeProduitInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: typeProduitInstance, field: 'numero', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("typeProduit.numero.label"),'default':("Numero")],-1)
printHtmlPart(5)
invokeTag('field','g',19,['name':("numero"),'value':(fieldValue(bean: typeProduitInstance, field: 'numero')),'required':("")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421142203281L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
