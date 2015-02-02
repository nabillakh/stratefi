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
expressionOut.print(acteurInstance?.typeActeur.nom)
})
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurInstance?.nomSEO} - ${acteurInstance?.typeActeur.nom}")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("keywords"),'content':("financement, ${acteurInstance?.nomSEO}, ${acteurInstance?.typeActeur.nom}, PME, startup")],-1)
printHtmlPart(3)
if(true && (acteurInstance?.publie)) {
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("index")],-1)
printHtmlPart(3)
}
else {
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("noindex")],-1)
printHtmlPart(5)
}
printHtmlPart(6)
invokeTag('javascript','g',16,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(8)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(9)
invokeTag('set','g',21,['var':("lien"),'value':("http://www.alloratio.com/")],-1)
printHtmlPart(10)
}
printHtmlPart(10)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(9)
invokeTag('set','g',24,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(10)
}
printHtmlPart(11)
expressionOut.print(lien)
printHtmlPart(12)
expressionOut.print(acteurInstance.nom)
printHtmlPart(13)
expressionOut.print(request.contextPath)
printHtmlPart(14)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(15)
expressionOut.print(request.contextPath)
printHtmlPart(16)
expressionOut.print(acteurInstance?.id)
printHtmlPart(17)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(18)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(19)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(20)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(21)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(22)
expressionOut.print(acteurInstance?.description.decodeHTML())
printHtmlPart(23)
expressionOut.print(acteurInstance?.url)
printHtmlPart(24)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(25)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(26)
loop:{
int i = 0
for( item in (typeProjets) ) {
printHtmlPart(27)
if(true && (( i <  4))) {
printHtmlPart(28)
expressionOut.print(lien)
printHtmlPart(29)
expressionOut.print(item.id)
printHtmlPart(30)
expressionOut.print(item.nomSEO)
printHtmlPart(31)
expressionOut.print(item.nom)
printHtmlPart(32)
expressionOut.print(item.nom)
printHtmlPart(33)
}
printHtmlPart(34)
i++
}
}
printHtmlPart(35)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(36)
loop:{
int i = 0
for( item in (perimetre) ) {
printHtmlPart(27)
if(true && (( i <  4))) {
printHtmlPart(37)
expressionOut.print(lien)
printHtmlPart(38)
expressionOut.print(item.id)
printHtmlPart(30)
expressionOut.print(item.nomSEO)
printHtmlPart(31)
expressionOut.print(item.nom)
printHtmlPart(39)
expressionOut.print(item.nom)
printHtmlPart(33)
}
printHtmlPart(34)
i++
}
}
printHtmlPart(40)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(41)
if(true && (acteurInstance.facebook)) {
printHtmlPart(42)
expressionOut.print(acteurInstance.facebook)
printHtmlPart(43)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(44)
}
printHtmlPart(45)
if(true && (acteurInstance.twitter)) {
printHtmlPart(42)
expressionOut.print(acteurInstance.twitter)
printHtmlPart(46)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(47)
}
printHtmlPart(45)
if(true && (acteurInstance.googleplus)) {
printHtmlPart(42)
expressionOut.print(acteurInstance.googleplus)
printHtmlPart(48)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(49)
}
printHtmlPart(45)
if(true && (acteurInstance.linkedin)) {
printHtmlPart(42)
expressionOut.print(acteurInstance.linkedin)
printHtmlPart(50)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(51)
}
printHtmlPart(52)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(53)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(54)
expressionOut.print(acteurInstance.nom)
printHtmlPart(55)
expressionOut.print(acteurInstance.nom)
printHtmlPart(56)
for( _it22430666 in (acteurInstance.produits) ) {
changeItVariable(_it22430666)
printHtmlPart(57)
expressionOut.print(acteurInstance.nom)
printHtmlPart(58)
expressionOut.print(it.typeProduit.nom)
printHtmlPart(59)
expressionOut.print(acteurInstance.nom)
printHtmlPart(60)
expressionOut.print(it.description)
printHtmlPart(61)
expressionOut.print(acteurInstance.nom)
printHtmlPart(62)
expressionOut.print(it.coutFixeDebut)
printHtmlPart(63)
expressionOut.print(it.coutFixeFin)
printHtmlPart(64)
expressionOut.print(it.coutVarEntreprise)
printHtmlPart(65)
expressionOut.print(it.montantMinimum)
printHtmlPart(66)
expressionOut.print(it.montantMaximum)
printHtmlPart(67)
expressionOut.print(it.recurrent)
printHtmlPart(68)
}
printHtmlPart(69)
expressionOut.print(empruntInstance?.nom)
printHtmlPart(70)
expressionOut.print(empruntInstance?.nbMensualite)
printHtmlPart(71)
expressionOut.print(empruntInstance?.montant)
printHtmlPart(72)
expressionOut.print(empruntInstance?.tauxInteret)
printHtmlPart(73)
expressionOut.print(empruntInstance?.tauxAssurance)
printHtmlPart(74)
expressionOut.print(acteurInstance.typeActeur.nom)
printHtmlPart(75)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(76)
expressionOut.print(request.contextPath)
printHtmlPart(16)
expressionOut.print(acteurInstance?.id)
printHtmlPart(77)
expressionOut.print(lien)
printHtmlPart(78)
expressionOut.print(acteurInstance.id)
printHtmlPart(30)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(79)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(18)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(80)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(81)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(82)
expressionOut.print(lien)
printHtmlPart(78)
expressionOut.print(acteurInstance.id)
printHtmlPart(30)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(79)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(18)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(83)
i++
}
}
printHtmlPart(84)
expressionOut.print(lien)
printHtmlPart(85)
loop:{
int i = 0
for( item in (typeProduits1) ) {
printHtmlPart(86)
expressionOut.print(item.id)
printHtmlPart(19)
expressionOut.print(item.nom)
printHtmlPart(87)
i++
}
}
printHtmlPart(88)
loop:{
int i = 0
for( item in (secteurs1) ) {
printHtmlPart(86)
expressionOut.print(item.id)
printHtmlPart(19)
expressionOut.print(item.nom)
printHtmlPart(87)
i++
}
}
printHtmlPart(89)
loop:{
int i = 0
for( item in (typesProjet1) ) {
printHtmlPart(86)
expressionOut.print(item.id)
printHtmlPart(19)
expressionOut.print(item.nom)
printHtmlPart(87)
i++
}
}
printHtmlPart(90)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1422695328041L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
