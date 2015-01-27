import stratefi.comparateur.Produit
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_produit_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/produit/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: produitInstance, field: 'nom', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("produit.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nom"),'value':(produitInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'description', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("produit.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("description"),'value':(produitInstance?.description)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'typeProduit', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("produit.typeProduit.label"),'default':("Type Produit")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("typeProduit"),'name':("typeProduit.id"),'from':(stratefi.comparateur.TypeProduit.list()),'optionKey':("id"),'value':(produitInstance?.typeProduit?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'coutVarInvestisseur', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("produit.coutVarInvestisseur.label"),'default':("Cout Var Investisseur")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("coutVarInvestisseur"),'value':(fieldValue(bean: produitInstance, field: 'coutVarInvestisseur'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'coutVarEntreprise', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("produit.coutVarEntreprise.label"),'default':("Cout Var Entreprise")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("coutVarEntreprise"),'value':(fieldValue(bean: produitInstance, field: 'coutVarEntreprise'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'coutFixeDebut', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("produit.coutFixeDebut.label"),'default':("Cout Fixe Debut")],-1)
printHtmlPart(2)
invokeTag('field','g',55,['name':("coutFixeDebut"),'value':(fieldValue(bean: produitInstance, field: 'coutFixeDebut'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'coutFixeFin', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("produit.coutFixeFin.label"),'default':("Cout Fixe Fin")],-1)
printHtmlPart(2)
invokeTag('field','g',64,['name':("coutFixeFin"),'value':(fieldValue(bean: produitInstance, field: 'coutFixeFin'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'montantMinimum', 'error'))
printHtmlPart(10)
invokeTag('message','g',70,['code':("produit.montantMinimum.label"),'default':("Montant Minimum")],-1)
printHtmlPart(2)
invokeTag('field','g',73,['name':("montantMinimum"),'value':(fieldValue(bean: produitInstance, field: 'montantMinimum'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'montantMaximum', 'error'))
printHtmlPart(11)
invokeTag('message','g',79,['code':("produit.montantMaximum.label"),'default':("Montant Maximum")],-1)
printHtmlPart(2)
invokeTag('field','g',82,['name':("montantMaximum"),'value':(fieldValue(bean: produitInstance, field: 'montantMaximum'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'typeProjet', 'error'))
printHtmlPart(12)
invokeTag('message','g',88,['code':("produit.typeProjet.label"),'default':("Type Projet")],-1)
printHtmlPart(2)
invokeTag('select','g',91,['name':("typeProjet"),'from':(stratefi.comparateur.TypeProjet.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(produitInstance?.typeProjet*.id),'class':("many-to-many")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'acteur', 'error'))
printHtmlPart(13)
invokeTag('message','g',97,['code':("produit.acteur.label"),'default':("Acteur")],-1)
printHtmlPart(14)
invokeTag('select','g',100,['id':("acteur"),'name':("acteur.id"),'from':(stratefi.comparateur.Acteur.list()),'optionKey':("id"),'required':(""),'value':(produitInstance?.acteur?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'recurrent', 'error'))
printHtmlPart(15)
invokeTag('message','g',106,['code':("produit.recurrent.label"),'default':("Recurrent")],-1)
printHtmlPart(14)
invokeTag('field','g',109,['name':("recurrent"),'value':(fieldValue(bean: produitInstance, field: 'recurrent')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: produitInstance, field: 'secteurs', 'error'))
printHtmlPart(16)
invokeTag('message','g',115,['code':("produit.secteurs.label"),'default':("Secteurs")],-1)
printHtmlPart(2)
invokeTag('select','g',118,['name':("secteurs"),'from':(stratefi.comparateur.Secteur.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(produitInstance?.secteurs*.id),'class':("many-to-many")],-1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421680472685L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
