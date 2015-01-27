import stratefi.comparateur.MixProduit
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_mixProduit_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/mixProduit/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: mixProduitInstance, field: 'nom', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("mixProduit.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nom"),'value':(mixProduitInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mixProduitInstance, field: 'description', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("mixProduit.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("description"),'value':(mixProduitInstance?.description)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mixProduitInstance, field: 'niche', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("mixProduit.niche.label"),'default':("Niche")],-1)
printHtmlPart(6)
invokeTag('select','g',28,['id':("niche"),'name':("niche.id"),'from':(stratefi.comparateur.Niche.list()),'optionKey':("id"),'required':(""),'value':(mixProduitInstance?.niche?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mixProduitInstance, field: 'produit', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("mixProduit.produit.label"),'default':("Produit")],-1)
printHtmlPart(6)
invokeTag('select','g',37,['id':("produit"),'name':("produit.id"),'from':(stratefi.comparateur.Produit.list()),'optionKey':("id"),'required':(""),'value':(mixProduitInstance?.produit?.id),'class':("many-to-one")],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422011995147L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
