import stratefi.comparateur.Acteur
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
invokeTag('message','g',7,['code':("acteur.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nom"),'value':(acteurInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'nomSEO', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("acteur.nomSEO.label"),'default':("Nom SEO")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("nomSEO"),'value':(acteurInstance?.nomSEO)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'description', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("acteur.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("description"),'value':(acteurInstance?.description)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'url', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("acteur.url.label"),'default':("Url")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("url"),'value':(acteurInstance?.url)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'image', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("acteur.image.label"),'default':("Image")],-1)
printHtmlPart(2)
invokeTag('select','g',46,['id':("image"),'name':("image.id"),'from':(stratefi.comparateur.Image.list()),'optionKey':("id"),'value':(acteurInstance?.image?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'numero', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("acteur.numero.label"),'default':("Numero")],-1)
printHtmlPart(2)
invokeTag('field','g',55,['name':("numero"),'value':(fieldValue(bean: acteurInstance, field: 'numero'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'typeActeur', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("acteur.typeActeur.label"),'default':("Type Acteur")],-1)
printHtmlPart(2)
invokeTag('select','g',64,['id':("typeActeur"),'name':("typeActeur.id"),'from':(stratefi.comparateur.TypeActeur.list()),'optionKey':("id"),'value':(acteurInstance?.typeActeur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'produits', 'error'))
printHtmlPart(10)
invokeTag('message','g',70,['code':("acteur.produits.label"),'default':("Produits")],-1)
printHtmlPart(11)
for( p in (acteurInstance?.produits) ) {
printHtmlPart(12)
createTagBody(2, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',76,['controller':("produit"),'action':("show"),'id':(p.id)],2)
printHtmlPart(13)
}
printHtmlPart(14)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'produit.label', default: 'Produit')]))
})
invokeTag('link','g',79,['controller':("produit"),'action':("create"),'params':(['acteur.id': acteurInstance?.id])],1)
printHtmlPart(15)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'facebook', 'error'))
printHtmlPart(16)
invokeTag('message','g',88,['code':("acteur.facebook.label"),'default':("Facebook")],-1)
printHtmlPart(2)
invokeTag('textField','g',91,['name':("facebook"),'value':(acteurInstance?.facebook)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'googleplus', 'error'))
printHtmlPart(17)
invokeTag('message','g',97,['code':("acteur.googleplus.label"),'default':("Googleplus")],-1)
printHtmlPart(2)
invokeTag('textField','g',100,['name':("googleplus"),'value':(acteurInstance?.googleplus)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'linkedin', 'error'))
printHtmlPart(18)
invokeTag('message','g',106,['code':("acteur.linkedin.label"),'default':("Linkedin")],-1)
printHtmlPart(2)
invokeTag('textField','g',109,['name':("linkedin"),'value':(acteurInstance?.linkedin)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'twitter', 'error'))
printHtmlPart(19)
invokeTag('message','g',115,['code':("acteur.twitter.label"),'default':("Twitter")],-1)
printHtmlPart(2)
invokeTag('textField','g',118,['name':("twitter"),'value':(acteurInstance?.twitter)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'slogan', 'error'))
printHtmlPart(20)
invokeTag('message','g',124,['code':("acteur.slogan.label"),'default':("Slogan")],-1)
printHtmlPart(2)
invokeTag('textField','g',127,['name':("slogan"),'value':(acteurInstance?.slogan)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: acteurInstance, field: 'contactMail', 'error'))
printHtmlPart(21)
invokeTag('message','g',133,['code':("acteur.contactMail.label"),'default':("Contact Mail")],-1)
printHtmlPart(2)
invokeTag('textField','g',136,['name':("contactMail"),'value':(acteurInstance?.contactMail)],-1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421837440014L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
