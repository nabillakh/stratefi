import stratefi.comparateur.MixProduit
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_mixProduitshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/mixProduit/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'mixProduit.label', default: 'MixProduit'))],-1)
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
if(true && (mixProduitInstance?.nom)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("mixProduit.nom.label"),'default':("Nom")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(mixProduitInstance),'field':("nom")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (mixProduitInstance?.description)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("mixProduit.description.label"),'default':("Description")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(mixProduitInstance),'field':("description")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (mixProduitInstance?.formulaire)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("mixProduit.formulaire.label"),'default':("Formulaire")],-1)
printHtmlPart(21)
createTagBody(3, {->
expressionOut.print(mixProduitInstance?.formulaire?.encodeAsHTML())
})
invokeTag('link','g',48,['controller':("formulaire"),'action':("show"),'id':(mixProduitInstance?.formulaire?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (mixProduitInstance?.produit)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("mixProduit.produit.label"),'default':("Produit")],-1)
printHtmlPart(23)
createTagBody(3, {->
expressionOut.print(mixProduitInstance?.produit?.encodeAsHTML())
})
invokeTag('link','g',57,['controller':("produit"),'action':("show"),'id':(mixProduitInstance?.produit?.id)],3)
printHtmlPart(16)
}
printHtmlPart(24)
createTagBody(2, {->
printHtmlPart(25)
createTagBody(3, {->
invokeTag('message','g',65,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',65,['class':("edit"),'action':("edit"),'resource':(mixProduitInstance)],3)
printHtmlPart(26)
invokeTag('actionSubmit','g',66,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(27)
})
invokeTag('form','g',68,['url':([resource:mixProduitInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(28)
})
invokeTag('captureBody','sitemesh',70,[:],1)
printHtmlPart(29)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426775023665L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
