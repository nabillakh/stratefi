import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_user_formFinancement_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_formFinancement.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(demandeInstance?.nom)
printHtmlPart(1)
expressionOut.print(demandeInstance?.typeProjet)
printHtmlPart(2)
for( typeProjetInstance in (stratefi.comparateur.TypeProjet.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(6)
expressionOut.print(demandeInstance?.montantRecherche)
printHtmlPart(7)
expressionOut.print(demandeInstance?.dureeBesoin)
printHtmlPart(2)
for( typeProjetInstance in (stratefi.comparateur.DureeBesoin.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(8)
expressionOut.print(demandeInstance?.urgenceBesoin)
printHtmlPart(2)
for( typeProjetInstance in (stratefi.comparateur.UrgenceBesoin.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(9)
expressionOut.print(demandeInstance?.entreprise?.nom)
printHtmlPart(10)
expressionOut.print(demandeInstance?.entreprise?.siren)
printHtmlPart(11)
expressionOut.print(demandeInstance?.entreprise?.secteur)
printHtmlPart(2)
for( typeProjetInstance in (stratefi.comparateur.Secteur.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(12)
expressionOut.print(demandeInstance?.entreprise?.gestionActif?.proprieteMachine)
printHtmlPart(2)
for( typeProjetInstance in (referentiel.ProprieteMachine.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(13)
expressionOut.print(demandeInstance?.entreprise?.gestionActif?.proprieteLocaux)
printHtmlPart(2)
for( typeProjetInstance in (referentiel.ProprieteLocaux.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(14)
expressionOut.print(demandeInstance?.entreprise?.businessModel?.croissanceCa)
printHtmlPart(2)
for( typeProjetInstance in (referentiel.CroissanceCa.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(15)
expressionOut.print(demandeInstance?.entreprise?.businessModel?.volumeClient)
printHtmlPart(2)
for( typeProjetInstance in (referentiel.VolumeClient.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(16)
expressionOut.print(demandeInstance?.entreprise?.businessModel?.creanceClient)
printHtmlPart(2)
for( typeProjetInstance in (referentiel.CreanceClient.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(17)
expressionOut.print(demandeInstance?.entreprise?.businessModel?.marchandise)
printHtmlPart(2)
for( typeProjetInstance in (referentiel.Marchandise.list()) ) {
printHtmlPart(3)
expressionOut.print(typeProjetInstance.id)
printHtmlPart(4)
expressionOut.print(typeProjetInstance.nom)
printHtmlPart(5)
}
printHtmlPart(18)
invokeTag('select','g',215,['id':("entreprise"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'value':(demandeInstance?.entreprise?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(19)
invokeTag('select','g',222,['id':("user"),'name':("user.id"),'from':(connection.User.list()),'optionKey':("id"),'value':(demandeInstance?.user?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(20)
expressionOut.print(hasErrors(bean: demandeInstance, field: 'publie', 'error'))
printHtmlPart(21)
invokeTag('message','g',229,['code':("demande.publie.label"),'default':("Publie")],-1)
printHtmlPart(22)
invokeTag('checkBox','g',232,['name':("publie"),'value':(demandeInstance?.publie)],-1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426693134907L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
