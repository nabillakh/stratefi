import stratefi.comparateur.Acteur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'acteur.label', default: 'Acteur'))],-1)
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
if(true && (acteurInstance?.nom)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("acteur.nom.label"),'default':("Nom")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(acteurInstance),'field':("nom")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.description)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("acteur.description.label"),'default':("Description")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(acteurInstance),'field':("description")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.url)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("acteur.url.label"),'default':("Url")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(acteurInstance),'field':("url")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.numero)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("acteur.numero.label"),'default':("Numero")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(acteurInstance),'field':("numero")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.typeActeur)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("acteur.typeActeur.label"),'default':("Type Acteur")],-1)
printHtmlPart(25)
createTagBody(3, {->
expressionOut.print(acteurInstance?.typeActeur?.encodeAsHTML())
})
invokeTag('link','g',66,['controller':("typeActeur"),'action':("show"),'id':(acteurInstance?.typeActeur?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.produits)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("acteur.produits.label"),'default':("Produits")],-1)
printHtmlPart(27)
for( p in (acteurInstance.produits) ) {
printHtmlPart(28)
createTagBody(4, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',76,['controller':("produit"),'action':("show"),'id':(p.id)],4)
printHtmlPart(29)
}
printHtmlPart(30)
}
printHtmlPart(17)
if(true && (acteurInstance?.facebook)) {
printHtmlPart(31)
invokeTag('message','g',84,['code':("acteur.facebook.label"),'default':("Facebook")],-1)
printHtmlPart(32)
invokeTag('fieldValue','g',86,['bean':(acteurInstance),'field':("facebook")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.googleplus)) {
printHtmlPart(33)
invokeTag('message','g',93,['code':("acteur.googleplus.label"),'default':("Googleplus")],-1)
printHtmlPart(34)
invokeTag('fieldValue','g',95,['bean':(acteurInstance),'field':("googleplus")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.linkedin)) {
printHtmlPart(35)
invokeTag('message','g',102,['code':("acteur.linkedin.label"),'default':("Linkedin")],-1)
printHtmlPart(36)
invokeTag('fieldValue','g',104,['bean':(acteurInstance),'field':("linkedin")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.twitter)) {
printHtmlPart(37)
invokeTag('message','g',111,['code':("acteur.twitter.label"),'default':("Twitter")],-1)
printHtmlPart(38)
invokeTag('fieldValue','g',113,['bean':(acteurInstance),'field':("twitter")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (acteurInstance?.probabilite)) {
printHtmlPart(39)
invokeTag('message','g',120,['code':("acteur.probabilite.label"),'default':("Probabilite")],-1)
printHtmlPart(40)
invokeTag('fieldValue','g',122,['bean':(acteurInstance),'field':("probabilite")],-1)
printHtmlPart(16)
}
printHtmlPart(41)
createTagBody(2, {->
printHtmlPart(42)
createTagBody(3, {->
invokeTag('message','g',130,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',130,['class':("edit"),'action':("edit"),'resource':(acteurInstance)],3)
printHtmlPart(43)
invokeTag('actionSubmit','g',131,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(44)
})
invokeTag('form','g',133,['url':([resource:acteurInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(45)
})
invokeTag('captureBody','sitemesh',135,[:],1)
printHtmlPart(46)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421155421233L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
