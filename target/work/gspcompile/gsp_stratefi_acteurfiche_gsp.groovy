import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteurfiche_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/fiche.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
expressionOut.print(acteurInstance?.nom)
printHtmlPart(2)
})
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("Présentation de ${acteurInstance?.nomSEO} du secteur : ${acteurInstance?.typeActeur.nom}. Specialites :  ${acteurInstance*.produits.typeProduit.nom}")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, ${acteurInstance?.nomSEO}, ${acteurInstance?.typeActeur.nom}")],-1)
printHtmlPart(4)
invokeTag('javascript','g',10,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',11,[:],1)
printHtmlPart(6)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(7)
invokeTag('set','g',15,['var':("lien"),'value':("http://default-environment-ej4fwvib6c.elasticbeanstalk.com/")],-1)
printHtmlPart(8)
}
printHtmlPart(8)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(7)
invokeTag('set','g',18,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(8)
}
printHtmlPart(9)
expressionOut.print(acteurInstance.nom)
printHtmlPart(10)
expressionOut.print(request.contextPath)
printHtmlPart(11)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(12)
expressionOut.print(request.contextPath)
printHtmlPart(13)
expressionOut.print(acteurInstance?.id)
printHtmlPart(14)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(15)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(16)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(17)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(18)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(19)
expressionOut.print(acteurInstance?.description)
printHtmlPart(20)
expressionOut.print(acteurInstance?.url)
printHtmlPart(21)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(23)
loop:{
int i = 0
for( item in (typeProjets) ) {
printHtmlPart(24)
if(true && (( i <  4))) {
printHtmlPart(25)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(item.id)
printHtmlPart(27)
expressionOut.print(item.nomSEO)
printHtmlPart(28)
expressionOut.print(item.nom)
printHtmlPart(29)
expressionOut.print(item.nom)
printHtmlPart(30)
}
printHtmlPart(31)
i++
}
}
printHtmlPart(32)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(33)
loop:{
int i = 0
for( item in (perimetre) ) {
printHtmlPart(24)
if(true && (( i <  4))) {
printHtmlPart(34)
expressionOut.print(lien)
printHtmlPart(35)
expressionOut.print(item.id)
printHtmlPart(27)
expressionOut.print(item.nomSEO)
printHtmlPart(36)
expressionOut.print(item.nom)
printHtmlPart(37)
expressionOut.print(item.nom)
printHtmlPart(30)
}
printHtmlPart(31)
i++
}
}
printHtmlPart(38)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(39)
if(true && (acteurInstance.facebook)) {
printHtmlPart(40)
expressionOut.print(acteurInstance.facebook)
printHtmlPart(41)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(42)
}
printHtmlPart(43)
if(true && (acteurInstance.twitter)) {
printHtmlPart(40)
expressionOut.print(acteurInstance.twitter)
printHtmlPart(44)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(45)
}
printHtmlPart(43)
if(true && (acteurInstance.googleplus)) {
printHtmlPart(40)
expressionOut.print(acteurInstance.googleplus)
printHtmlPart(46)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(47)
}
printHtmlPart(43)
if(true && (acteurInstance.linkedin)) {
printHtmlPart(40)
expressionOut.print(acteurInstance.linkedin)
printHtmlPart(48)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(49)
}
printHtmlPart(50)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(51)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(52)
expressionOut.print(acteurInstance.nom)
printHtmlPart(53)
expressionOut.print(acteurInstance.nom)
printHtmlPart(54)
for( _it663488 in (acteurInstance.produits) ) {
changeItVariable(_it663488)
printHtmlPart(55)
expressionOut.print(acteurInstance.nom)
printHtmlPart(56)
expressionOut.print(it.typeProduit.nom)
printHtmlPart(57)
expressionOut.print(acteurInstance.nom)
printHtmlPart(58)
expressionOut.print(it.description)
printHtmlPart(59)
expressionOut.print(acteurInstance.nom)
printHtmlPart(60)
expressionOut.print(it.coutFixeDebut)
printHtmlPart(61)
expressionOut.print(it.coutFixeFin)
printHtmlPart(62)
expressionOut.print(it.coutVarEntreprise)
printHtmlPart(63)
expressionOut.print(it.montantMinimum)
printHtmlPart(64)
expressionOut.print(it.montantMaximum)
printHtmlPart(65)
expressionOut.print(it.recurrent)
printHtmlPart(66)
}
printHtmlPart(67)
expressionOut.print(empruntInstance?.nom)
printHtmlPart(68)
expressionOut.print(empruntInstance?.nbMensualite)
printHtmlPart(69)
expressionOut.print(empruntInstance?.montant)
printHtmlPart(70)
expressionOut.print(empruntInstance?.tauxInteret)
printHtmlPart(71)
expressionOut.print(empruntInstance?.tauxAssurance)
printHtmlPart(72)
expressionOut.print(acteurInstance.typeActeur.nom)
printHtmlPart(73)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(74)
expressionOut.print(request.contextPath)
printHtmlPart(13)
expressionOut.print(acteurInstance?.id)
printHtmlPart(75)
expressionOut.print(lien)
printHtmlPart(76)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(77)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(16)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(78)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(79)
expressionOut.print(lien)
printHtmlPart(76)
expressionOut.print(acteurInstance.id)
printHtmlPart(27)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(77)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(80)
i++
}
}
printHtmlPart(81)
loop:{
int i = 0
for( item in (typeProduits) ) {
printHtmlPart(82)
expressionOut.print(item.id)
printHtmlPart(16)
expressionOut.print(item.nom)
printHtmlPart(83)
i++
}
}
printHtmlPart(84)
loop:{
int i = 0
for( item in (secteurs) ) {
printHtmlPart(82)
expressionOut.print(item.id)
printHtmlPart(16)
expressionOut.print(item.nom)
printHtmlPart(83)
i++
}
}
printHtmlPart(85)
loop:{
int i = 0
for( item in (typesProjet) ) {
printHtmlPart(82)
expressionOut.print(item.id)
printHtmlPart(16)
expressionOut.print(item.nom)
printHtmlPart(83)
i++
}
}
printHtmlPart(86)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422297401843L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
