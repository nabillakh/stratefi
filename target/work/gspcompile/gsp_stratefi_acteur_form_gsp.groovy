import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteur_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'nom', 'error'))
printHtmlPart(1)
invokeTag('message','g',5,['code':("acteur.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',8,['name':("nom"),'value':(acteurInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'nomSEO', 'error'))
printHtmlPart(4)
invokeTag('message','g',14,['code':("acteur.nomSEO.label"),'default':("Nom SEO")],-1)
printHtmlPart(2)
invokeTag('textField','g',17,['name':("nomSEO"),'value':(acteurInstance?.nomSEO)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'description', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("acteur.description.label"),'default':("Description")],-1)
printHtmlPart(6)
expressionOut.print(acteurInstance?.description)
printHtmlPart(7)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'url', 'error'))
printHtmlPart(8)
invokeTag('message','g',32,['code':("acteur.url.label"),'default':("Url")],-1)
printHtmlPart(2)
invokeTag('textField','g',35,['name':("url"),'value':(acteurInstance?.url)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'image', 'error'))
printHtmlPart(9)
invokeTag('message','g',41,['code':("acteur.image.label"),'default':("Image")],-1)
printHtmlPart(2)
invokeTag('textField','g',44,['name':("image"),'value':(acteurInstance?.image)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'numero', 'error'))
printHtmlPart(10)
invokeTag('message','g',50,['code':("acteur.numero.label"),'default':("Numero")],-1)
printHtmlPart(2)
invokeTag('field','g',53,['name':("numero"),'value':(fieldValue(bean: acteurInstance, field: 'numero'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'typeActeur', 'error'))
printHtmlPart(11)
invokeTag('message','g',59,['code':("acteur.typeActeur.label"),'default':("Type Acteur")],-1)
printHtmlPart(2)
invokeTag('select','g',62,['id':("typeActeur"),'name':("typeActeur.id"),'from':(stratefi.comparateur.TypeActeur.list()),'optionKey':("id"),'value':(acteurInstance?.typeActeur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'produits', 'error'))
printHtmlPart(12)
invokeTag('message','g',68,['code':("acteur.produits.label"),'default':("Produits")],-1)
printHtmlPart(13)
for( p in (acteurInstance?.produits) ) {
printHtmlPart(14)
createTagBody(2, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',74,['controller':("produit"),'action':("show"),'id':(p.id)],2)
printHtmlPart(15)
}
printHtmlPart(16)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'produit.label', default: 'Produit')]))
})
invokeTag('link','g',77,['controller':("produit"),'action':("create"),'params':(['acteur.id': acteurInstance?.id])],1)
printHtmlPart(17)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'facebook', 'error'))
printHtmlPart(18)
invokeTag('message','g',86,['code':("acteur.facebook.label"),'default':("Facebook")],-1)
printHtmlPart(2)
invokeTag('textField','g',89,['name':("facebook"),'value':(acteurInstance?.facebook)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'googleplus', 'error'))
printHtmlPart(19)
invokeTag('message','g',95,['code':("acteur.googleplus.label"),'default':("Googleplus")],-1)
printHtmlPart(2)
invokeTag('textField','g',98,['name':("googleplus"),'value':(acteurInstance?.googleplus)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'linkedin', 'error'))
printHtmlPart(20)
invokeTag('message','g',104,['code':("acteur.linkedin.label"),'default':("Linkedin")],-1)
printHtmlPart(2)
invokeTag('textField','g',107,['name':("linkedin"),'value':(acteurInstance?.linkedin)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'twitter', 'error'))
printHtmlPart(21)
invokeTag('message','g',113,['code':("acteur.twitter.label"),'default':("Twitter")],-1)
printHtmlPart(2)
invokeTag('textField','g',116,['name':("twitter"),'value':(acteurInstance?.twitter)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'slogan', 'error'))
printHtmlPart(22)
invokeTag('message','g',122,['code':("acteur.slogan.label"),'default':("Slogan")],-1)
printHtmlPart(2)
invokeTag('textField','g',125,['name':("slogan"),'value':(acteurInstance?.slogan)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'contactMail', 'error'))
printHtmlPart(23)
invokeTag('message','g',131,['code':("acteur.contactMail.label"),'default':("Contact Mail")],-1)
printHtmlPart(2)
invokeTag('textField','g',134,['name':("contactMail"),'value':(acteurInstance?.contactMail)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'publie', 'error'))
printHtmlPart(24)
invokeTag('message','g',140,['code':("acteur.publie.label"),'default':("Publie")],-1)
printHtmlPart(2)
invokeTag('checkBox','g',143,['name':("publie"),'value':(acteurInstance?.publie)],-1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1424125576264L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
