import entreprises.Entreprise
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_entreprise_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/entreprise/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'demandes', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("entreprise.demandes.label"),'default':("Demandes")],-1)
printHtmlPart(2)
for( d in (entrepriseInstance?.demandes) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(d?.encodeAsHTML())
})
invokeTag('link','g',13,['controller':("demande"),'action':("show"),'id':(d.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'demande.label', default: 'Demande')]))
})
invokeTag('link','g',16,['controller':("demande"),'action':("create"),'params':(['entreprise.id': entrepriseInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'secteur', 'error'))
printHtmlPart(7)
invokeTag('message','g',25,['code':("entreprise.secteur.label"),'default':("Secteur")],-1)
printHtmlPart(8)
invokeTag('select','g',28,['id':("secteur"),'name':("secteur.id"),'from':(stratefi.comparateur.Secteur.list()),'optionKey':("id"),'value':(entrepriseInstance?.secteur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'descriptionActivite', 'error'))
printHtmlPart(10)
invokeTag('message','g',34,['code':("entreprise.descriptionActivite.label"),'default':("Description Activite")],-1)
printHtmlPart(8)
invokeTag('textField','g',37,['name':("descriptionActivite"),'value':(entrepriseInstance?.descriptionActivite)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'siren', 'error'))
printHtmlPart(11)
invokeTag('message','g',43,['code':("entreprise.siren.label"),'default':("Siren")],-1)
printHtmlPart(8)
invokeTag('textField','g',46,['name':("siren"),'value':(entrepriseInstance?.siren)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'adresse', 'error'))
printHtmlPart(12)
invokeTag('message','g',52,['code':("entreprise.adresse.label"),'default':("Adresse")],-1)
printHtmlPart(8)
invokeTag('textField','g',55,['name':("adresse"),'value':(entrepriseInstance?.adresse)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'codePostal', 'error'))
printHtmlPart(13)
invokeTag('message','g',61,['code':("entreprise.codePostal.label"),'default':("Code Postal")],-1)
printHtmlPart(8)
invokeTag('textField','g',64,['name':("codePostal"),'value':(entrepriseInstance?.codePostal)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'ville', 'error'))
printHtmlPart(14)
invokeTag('message','g',70,['code':("entreprise.ville.label"),'default':("Ville")],-1)
printHtmlPart(8)
invokeTag('textField','g',73,['name':("ville"),'value':(entrepriseInstance?.ville)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'pays', 'error'))
printHtmlPart(15)
invokeTag('message','g',79,['code':("entreprise.pays.label"),'default':("Pays")],-1)
printHtmlPart(8)
invokeTag('textField','g',82,['name':("pays"),'value':(entrepriseInstance?.pays)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'nom', 'error'))
printHtmlPart(16)
invokeTag('message','g',88,['code':("entreprise.nom.label"),'default':("Nom")],-1)
printHtmlPart(8)
invokeTag('textField','g',91,['name':("nom"),'value':(entrepriseInstance?.nom)],-1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426584378483L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
