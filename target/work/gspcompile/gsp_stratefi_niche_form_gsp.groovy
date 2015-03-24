import stratefi.comparateur.Niche
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_niche_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/niche/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'mixProduits', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("formulaire.mixProduits.label"),'default':("Mix Produits")],-1)
printHtmlPart(2)
for( m in (formulaireInstance?.mixProduits) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(m?.encodeAsHTML())
})
invokeTag('link','g',13,['controller':("mixProduit"),'action':("show"),'id':(m.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'mixProduit.label', default: 'MixProduit')]))
})
invokeTag('link','g',16,['controller':("mixProduit"),'action':("create"),'params':(['formulaire.id': formulaireInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'titre', 'error'))
printHtmlPart(7)
invokeTag('message','g',25,['code':("formulaire.titre.label"),'default':("Titre")],-1)
printHtmlPart(8)
invokeTag('textField','g',28,['name':("titre"),'value':(formulaireInstance?.titre)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'keywords', 'error'))
printHtmlPart(10)
invokeTag('message','g',34,['code':("formulaire.keywords.label"),'default':("Keywords")],-1)
printHtmlPart(8)
invokeTag('textField','g',37,['name':("keywords"),'value':(formulaireInstance?.keywords)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'textePublie', 'error'))
printHtmlPart(11)
invokeTag('message','g',43,['code':("formulaire.textePublie.label"),'default':("Texte Publie")],-1)
printHtmlPart(8)
invokeTag('textField','g',46,['name':("textePublie"),'value':(formulaireInstance?.textePublie)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'publie', 'error'))
printHtmlPart(12)
invokeTag('message','g',52,['code':("formulaire.publie.label"),'default':("Publie")],-1)
printHtmlPart(8)
invokeTag('checkBox','g',55,['name':("publie"),'value':(formulaireInstance?.publie)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'nom', 'error'))
printHtmlPart(13)
invokeTag('message','g',61,['code':("formulaire.nom.label"),'default':("Nom")],-1)
printHtmlPart(8)
invokeTag('textField','g',64,['name':("nom"),'value':(formulaireInstance?.nom)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'description', 'error'))
printHtmlPart(14)
invokeTag('message','g',70,['code':("formulaire.description.label"),'default':("Description")],-1)
printHtmlPart(8)
invokeTag('textField','g',73,['name':("description"),'value':(formulaireInstance?.description)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'secteur', 'error'))
printHtmlPart(15)
invokeTag('message','g',79,['code':("formulaire.secteur.label"),'default':("Secteur")],-1)
printHtmlPart(8)
invokeTag('select','g',82,['id':("secteur"),'name':("secteur.id"),'from':(stratefi.comparateur.Secteur.list()),'optionKey':("id"),'value':(formulaireInstance?.secteur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'typeProduit', 'error'))
printHtmlPart(16)
invokeTag('message','g',88,['code':("formulaire.typeProduit.label"),'default':("Type Produit")],-1)
printHtmlPart(8)
invokeTag('select','g',91,['id':("typeProduit"),'name':("typeProduit.id"),'from':(stratefi.comparateur.TypeProduit.list()),'optionKey':("id"),'value':(formulaireInstance?.typeProduit?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'typeProjet', 'error'))
printHtmlPart(17)
invokeTag('message','g',97,['code':("formulaire.typeProjet.label"),'default':("Type Projet")],-1)
printHtmlPart(8)
invokeTag('select','g',100,['id':("typeProjet"),'name':("typeProjet.id"),'from':(stratefi.comparateur.TypeProjet.list()),'optionKey':("id"),'value':(formulaireInstance?.typeProjet?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: formulaireInstance, field: 'nombreJoue', 'error'))
printHtmlPart(18)
invokeTag('message','g',106,['code':("formulaire.nombreJoue.label"),'default':("Nombre Joue")],-1)
printHtmlPart(8)
invokeTag('field','g',109,['name':("nombreJoue"),'value':(fieldValue(bean: formulaireInstance, field: 'nombreJoue'))],-1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426773082943L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
