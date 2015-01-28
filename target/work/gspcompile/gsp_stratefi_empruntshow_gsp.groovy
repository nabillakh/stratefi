import stratefi.outil.Emprunt
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_empruntshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/emprunt/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'emprunt.label', default: 'Emprunt'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('message','g',10,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(4)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(5)
invokeTag('message','g',13,['code':("default.home.label")],-1)
printHtmlPart(6)
createTagBody(2, {->
invokeTag('message','g',14,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("list"),'action':("index")],2)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (empruntInstance?.tauxAssurance)) {
printHtmlPart(13)
invokeTag('message','g',27,['code':("emprunt.tauxAssurance.label"),'default':("Taux Assurance")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',29,['bean':(empruntInstance),'field':("tauxAssurance")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (empruntInstance?.nom)) {
printHtmlPart(17)
invokeTag('message','g',36,['code':("emprunt.nom.label"),'default':("Nom")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',38,['bean':(empruntInstance),'field':("nom")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (empruntInstance?.montant)) {
printHtmlPart(19)
invokeTag('message','g',45,['code':("emprunt.montant.label"),'default':("Montant")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',47,['bean':(empruntInstance),'field':("montant")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (empruntInstance?.nbMensualite)) {
printHtmlPart(21)
invokeTag('message','g',54,['code':("emprunt.nbMensualite.label"),'default':("Nb Mensualite")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',56,['bean':(empruntInstance),'field':("nbMensualite")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (empruntInstance?.tauxInteret)) {
printHtmlPart(23)
invokeTag('message','g',63,['code':("emprunt.tauxInteret.label"),'default':("Taux Interet")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',65,['bean':(empruntInstance),'field':("tauxInteret")],-1)
printHtmlPart(15)
}
printHtmlPart(25)
createTagBody(2, {->
printHtmlPart(26)
createTagBody(3, {->
invokeTag('message','g',73,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',73,['class':("edit"),'action':("edit"),'resource':(empruntInstance)],3)
printHtmlPart(27)
invokeTag('actionSubmit','g',74,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(28)
})
invokeTag('form','g',76,['url':([resource:empruntInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(29)
})
invokeTag('captureBody','sitemesh',78,[:],1)
printHtmlPart(30)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422367856610L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
