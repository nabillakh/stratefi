import stratefi.comparateur.Niche
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_nicheshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/niche/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'niche.label', default: 'Niche'))],-1)
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
if(true && (nicheInstance?.mixProduits)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("niche.mixProduits.label"),'default':("Mix Produits")],-1)
printHtmlPart(15)
for( m in (nicheInstance.mixProduits) ) {
printHtmlPart(16)
createTagBody(4, {->
expressionOut.print(m?.encodeAsHTML())
})
invokeTag('link','g',31,['controller':("mixProduit"),'action':("show"),'id':(m.id)],4)
printHtmlPart(17)
}
printHtmlPart(18)
}
printHtmlPart(19)
if(true && (nicheInstance?.titre)) {
printHtmlPart(20)
invokeTag('message','g',39,['code':("niche.titre.label"),'default':("Titre")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',41,['bean':(nicheInstance),'field':("titre")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.keywords)) {
printHtmlPart(23)
invokeTag('message','g',48,['code':("niche.keywords.label"),'default':("Keywords")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',50,['bean':(nicheInstance),'field':("keywords")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.textePublie)) {
printHtmlPart(25)
invokeTag('message','g',57,['code':("niche.textePublie.label"),'default':("Texte Publie")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',59,['bean':(nicheInstance),'field':("textePublie")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.publie)) {
printHtmlPart(27)
invokeTag('message','g',66,['code':("niche.publie.label"),'default':("Publie")],-1)
printHtmlPart(28)
invokeTag('formatBoolean','g',68,['boolean':(nicheInstance?.publie)],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.nom)) {
printHtmlPart(29)
invokeTag('message','g',75,['code':("niche.nom.label"),'default':("Nom")],-1)
printHtmlPart(30)
invokeTag('fieldValue','g',77,['bean':(nicheInstance),'field':("nom")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.description)) {
printHtmlPart(31)
invokeTag('message','g',84,['code':("niche.description.label"),'default':("Description")],-1)
printHtmlPart(32)
invokeTag('fieldValue','g',86,['bean':(nicheInstance),'field':("description")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.secteur)) {
printHtmlPart(33)
invokeTag('message','g',93,['code':("niche.secteur.label"),'default':("Secteur")],-1)
printHtmlPart(34)
createTagBody(3, {->
expressionOut.print(nicheInstance?.secteur?.encodeAsHTML())
})
invokeTag('link','g',95,['controller':("secteur"),'action':("show"),'id':(nicheInstance?.secteur?.id)],3)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.typeProduit)) {
printHtmlPart(35)
invokeTag('message','g',102,['code':("niche.typeProduit.label"),'default':("Type Produit")],-1)
printHtmlPart(36)
createTagBody(3, {->
expressionOut.print(nicheInstance?.typeProduit?.encodeAsHTML())
})
invokeTag('link','g',104,['controller':("typeProduit"),'action':("show"),'id':(nicheInstance?.typeProduit?.id)],3)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.typeProjet)) {
printHtmlPart(37)
invokeTag('message','g',111,['code':("niche.typeProjet.label"),'default':("Type Projet")],-1)
printHtmlPart(38)
createTagBody(3, {->
expressionOut.print(nicheInstance?.typeProjet?.encodeAsHTML())
})
invokeTag('link','g',113,['controller':("typeProjet"),'action':("show"),'id':(nicheInstance?.typeProjet?.id)],3)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (nicheInstance?.nombreJoue)) {
printHtmlPart(39)
invokeTag('message','g',120,['code':("niche.nombreJoue.label"),'default':("Nombre Joue")],-1)
printHtmlPart(40)
invokeTag('fieldValue','g',122,['bean':(nicheInstance),'field':("nombreJoue")],-1)
printHtmlPart(22)
}
printHtmlPart(41)
createTagBody(2, {->
printHtmlPart(42)
createTagBody(3, {->
invokeTag('message','g',130,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',130,['class':("edit"),'action':("edit"),'resource':(nicheInstance)],3)
printHtmlPart(43)
invokeTag('actionSubmit','g',131,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(44)
})
invokeTag('form','g',133,['url':([resource:nicheInstance, action:'delete']),'method':("DELETE")],2)
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
public static final long LAST_MODIFIED = 1422268176867L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
