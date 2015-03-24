import entreprises.Entreprise
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_entrepriseshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/entreprise/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'entreprise.label', default: 'Entreprise'))],-1)
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
if(true && (entrepriseInstance?.demandes)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("entreprise.demandes.label"),'default':("Demandes")],-1)
printHtmlPart(15)
for( d in (entrepriseInstance.demandes) ) {
printHtmlPart(16)
createTagBody(4, {->
expressionOut.print(d?.encodeAsHTML())
})
invokeTag('link','g',31,['controller':("demande"),'action':("show"),'id':(d.id)],4)
printHtmlPart(17)
}
printHtmlPart(18)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.secteur)) {
printHtmlPart(20)
invokeTag('message','g',39,['code':("entreprise.secteur.label"),'default':("Secteur")],-1)
printHtmlPart(21)
createTagBody(3, {->
expressionOut.print(entrepriseInstance?.secteur?.encodeAsHTML())
})
invokeTag('link','g',41,['controller':("secteur"),'action':("show"),'id':(entrepriseInstance?.secteur?.id)],3)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.descriptionActivite)) {
printHtmlPart(23)
invokeTag('message','g',48,['code':("entreprise.descriptionActivite.label"),'default':("Description Activite")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',50,['bean':(entrepriseInstance),'field':("descriptionActivite")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.siren)) {
printHtmlPart(25)
invokeTag('message','g',57,['code':("entreprise.siren.label"),'default':("Siren")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',59,['bean':(entrepriseInstance),'field':("siren")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.adresse)) {
printHtmlPart(27)
invokeTag('message','g',66,['code':("entreprise.adresse.label"),'default':("Adresse")],-1)
printHtmlPart(28)
invokeTag('fieldValue','g',68,['bean':(entrepriseInstance),'field':("adresse")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.codePostal)) {
printHtmlPart(29)
invokeTag('message','g',75,['code':("entreprise.codePostal.label"),'default':("Code Postal")],-1)
printHtmlPart(30)
invokeTag('fieldValue','g',77,['bean':(entrepriseInstance),'field':("codePostal")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.ville)) {
printHtmlPart(31)
invokeTag('message','g',84,['code':("entreprise.ville.label"),'default':("Ville")],-1)
printHtmlPart(32)
invokeTag('fieldValue','g',86,['bean':(entrepriseInstance),'field':("ville")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.pays)) {
printHtmlPart(33)
invokeTag('message','g',93,['code':("entreprise.pays.label"),'default':("Pays")],-1)
printHtmlPart(34)
invokeTag('fieldValue','g',95,['bean':(entrepriseInstance),'field':("pays")],-1)
printHtmlPart(22)
}
printHtmlPart(19)
if(true && (entrepriseInstance?.nom)) {
printHtmlPart(35)
invokeTag('message','g',102,['code':("entreprise.nom.label"),'default':("Nom")],-1)
printHtmlPart(36)
invokeTag('fieldValue','g',104,['bean':(entrepriseInstance),'field':("nom")],-1)
printHtmlPart(22)
}
printHtmlPart(37)
createTagBody(2, {->
printHtmlPart(38)
createTagBody(3, {->
invokeTag('message','g',112,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',112,['class':("edit"),'action':("edit"),'resource':(entrepriseInstance)],3)
printHtmlPart(39)
invokeTag('actionSubmit','g',113,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(40)
})
invokeTag('form','g',115,['url':([resource:entrepriseInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(41)
})
invokeTag('captureBody','sitemesh',117,[:],1)
printHtmlPart(42)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426584378035L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
