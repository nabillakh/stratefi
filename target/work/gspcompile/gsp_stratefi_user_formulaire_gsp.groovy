import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_user_formulaire_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_formulaire.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
invokeTag('textField','g',8,['value':(formulaireInstance?.nomProjet),'class':("form-control"),'name':("nomProjet"),'placeholder':("Saisir le nom du projet"),'required':("required")],-1)
printHtmlPart(1)
invokeTag('select','g',17,['id':("e1"),'class':("form-control populate"),'name':("typeProjet.id"),'from':(stratefi.comparateur.TypeProjet.list()),'optionKey':("id"),'value':(formulaireInstance?.typeProjet?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(2)
invokeTag('textField','g',27,['value':(formulaireInstance?.montantRecherche),'class':("form-control"),'name':("montantRecherche"),'placeholder':("Saisir le nom du projet"),'required':("required")],-1)
printHtmlPart(3)
invokeTag('select','g',39,['id':("e1"),'class':("form-control populate"),'name':("dureeBesoin.id"),'from':(stratefi.comparateur.DureeBesoin.list()),'optionKey':("id"),'value':(formulaireInstance?.dureeBesoin?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(4)
invokeTag('select','g',51,['id':("e1"),'class':("form-control populate"),'name':("urgenceBesoin.id"),'from':(stratefi.comparateur.UrgenceBesoin.list()),'optionKey':("id"),'value':(formulaireInstance?.urgenceBesoin?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(5)
invokeTag('textField','g',68,['value':(formulaireInstance?.nomEntreprise),'class':("form-control"),'name':("nomEntreprise"),'placeholder':("Saisir le nom du projet"),'required':("required")],-1)
printHtmlPart(6)
invokeTag('textField','g',77,['value':(formulaireInstance?.siren),'class':("form-control"),'name':("siren"),'placeholder':("SIREN"),'required':("required")],-1)
printHtmlPart(7)
invokeTag('select','g',88,['id':("e1"),'class':("form-control populate"),'name':("secteur.id"),'from':(stratefi.comparateur.Secteur.list()),'optionKey':("id"),'value':(formulaireInstance?.secteur?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(8)
invokeTag('select','g',105,['id':("e1"),'class':("form-control populate"),'name':("proprieteMachine.id"),'from':(referentiel.ProprieteMachine.list()),'optionKey':("id"),'value':(formulaireInstance?.proprieteMachine?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(9)
invokeTag('select','g',117,['id':("e1"),'class':("form-control populate"),'name':("proprieteLocaux.id"),'from':(referentiel.ProprieteLocaux.list()),'optionKey':("id"),'value':(formulaireInstance?.proprieteLocaux?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(10)
invokeTag('select','g',134,['id':("e1"),'class':("form-control populate"),'name':("croissanceCa.id"),'from':(referentiel.CroissanceCa.list()),'optionKey':("id"),'value':(formulaireInstance?.croissanceCa?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(11)
invokeTag('select','g',143,['id':("e1"),'class':("form-control populate"),'name':("volumeClient.id"),'from':(referentiel.VolumeClient.list()),'optionKey':("id"),'value':(formulaireInstance?.volumeClient?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(12)
invokeTag('select','g',154,['id':("e1"),'class':("form-control populate"),'name':("creanceClient.id"),'from':(referentiel.CreanceClient.list()),'optionKey':("id"),'value':(formulaireInstance?.creanceClient?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(13)
invokeTag('select','g',164,['id':("e1"),'class':("form-control populate"),'name':("marchandise.id"),'from':(referentiel.Marchandise.list()),'optionKey':("id"),'value':(formulaireInstance?.marchandise?.id),'noSelection':(['null': ''])],-1)
printHtmlPart(14)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427109626928L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
