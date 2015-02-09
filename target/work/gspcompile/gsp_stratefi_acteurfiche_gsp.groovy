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
if(true && ((acteurInstance.publie))) {
printHtmlPart(16)
expressionOut.print(request.contextPath)
printHtmlPart(17)
expressionOut.print(acteurInstance?.image)
printHtmlPart(18)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(19)
}
else {
printHtmlPart(16)
expressionOut.print(request.contextPath)
printHtmlPart(20)
}
printHtmlPart(21)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(23)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(24)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(25)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(26)
if(true && ((acteurInstance.publie))) {
printHtmlPart(27)
expressionOut.print(acteurInstance?.description.decodeHTML())
printHtmlPart(27)
}
else {
printHtmlPart(28)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(29)
}
printHtmlPart(30)
if(true && ((acteurInstance.publie))) {
printHtmlPart(31)
expressionOut.print(acteurInstance?.url)
printHtmlPart(32)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(33)
}
else {
printHtmlPart(34)
}
printHtmlPart(35)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(36)
loop:{
int i = 0
for( item in (typeProjets) ) {
printHtmlPart(37)
if(true && (( i <  4))) {
printHtmlPart(38)
expressionOut.print(lien)
printHtmlPart(39)
expressionOut.print(item.id)
printHtmlPart(40)
expressionOut.print(item.nomSEO)
printHtmlPart(41)
expressionOut.print(item.nom)
printHtmlPart(42)
expressionOut.print(item.nom)
printHtmlPart(43)
}
printHtmlPart(44)
i++
}
}
printHtmlPart(45)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(46)
loop:{
int i = 0
for( item in (perimetre) ) {
printHtmlPart(37)
if(true && (( i <  4))) {
printHtmlPart(47)
expressionOut.print(lien)
printHtmlPart(48)
expressionOut.print(item.id)
printHtmlPart(40)
expressionOut.print(item.nomSEO)
printHtmlPart(41)
expressionOut.print(item.nom)
printHtmlPart(49)
expressionOut.print(item.nom)
printHtmlPart(43)
}
printHtmlPart(44)
i++
}
}
printHtmlPart(50)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(51)
if(true && (acteurInstance.facebook)) {
printHtmlPart(52)
expressionOut.print(acteurInstance.facebook)
printHtmlPart(53)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(54)
}
printHtmlPart(55)
if(true && (acteurInstance.twitter)) {
printHtmlPart(52)
expressionOut.print(acteurInstance.twitter)
printHtmlPart(56)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(57)
}
printHtmlPart(55)
if(true && (acteurInstance.googleplus)) {
printHtmlPart(52)
expressionOut.print(acteurInstance.googleplus)
printHtmlPart(58)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(59)
}
printHtmlPart(55)
if(true && (acteurInstance.linkedin)) {
printHtmlPart(52)
expressionOut.print(acteurInstance.linkedin)
printHtmlPart(60)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(61)
}
printHtmlPart(62)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(63)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(64)
expressionOut.print(acteurInstance.nom)
printHtmlPart(65)
expressionOut.print(acteurInstance.nom)
printHtmlPart(66)
for( _it6155572 in (acteurInstance.produits) ) {
changeItVariable(_it6155572)
printHtmlPart(67)
expressionOut.print(acteurInstance.nom)
printHtmlPart(68)
expressionOut.print(it.typeProduit.nom)
printHtmlPart(69)
expressionOut.print(acteurInstance.nom)
printHtmlPart(70)
expressionOut.print(it.description)
printHtmlPart(71)
expressionOut.print(acteurInstance.nom)
printHtmlPart(72)
expressionOut.print(it.coutFixeDebut)
printHtmlPart(73)
expressionOut.print(it.coutFixeFin)
printHtmlPart(74)
expressionOut.print(it.coutVarEntreprise)
printHtmlPart(75)
expressionOut.print(it.montantMinimum)
printHtmlPart(76)
expressionOut.print(it.montantMaximum)
printHtmlPart(77)
expressionOut.print(it.recurrent)
printHtmlPart(78)
}
printHtmlPart(79)
if(true && ((acteurInstance.publie))) {
printHtmlPart(80)
}
else {
printHtmlPart(81)
}
printHtmlPart(82)
expressionOut.print(empruntInstance?.nom)
printHtmlPart(83)
expressionOut.print(empruntInstance?.nbMensualite)
printHtmlPart(84)
expressionOut.print(empruntInstance?.montant)
printHtmlPart(85)
expressionOut.print(empruntInstance?.tauxInteret)
printHtmlPart(86)
expressionOut.print(empruntInstance?.tauxAssurance)
printHtmlPart(87)
expressionOut.print(acteurInstance.typeActeur.nom)
printHtmlPart(88)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(89)
expressionOut.print(lien)
printHtmlPart(90)
expressionOut.print(acteurInstance.id)
printHtmlPart(40)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(91)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(92)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(93)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(94)
expressionOut.print(lien)
printHtmlPart(90)
expressionOut.print(acteurInstance.id)
printHtmlPart(40)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(91)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(95)
i++
}
}
printHtmlPart(96)
expressionOut.print(lien)
printHtmlPart(97)
loop:{
int i = 0
for( item in (typeProduits1) ) {
printHtmlPart(98)
expressionOut.print(item.id)
printHtmlPart(23)
expressionOut.print(item.nom)
printHtmlPart(99)
i++
}
}
printHtmlPart(100)
loop:{
int i = 0
for( item in (secteurs1) ) {
printHtmlPart(98)
expressionOut.print(item.id)
printHtmlPart(23)
expressionOut.print(item.nom)
printHtmlPart(99)
i++
}
}
printHtmlPart(101)
loop:{
int i = 0
for( item in (typesProjet1) ) {
printHtmlPart(98)
expressionOut.print(item.id)
printHtmlPart(23)
expressionOut.print(item.nom)
printHtmlPart(99)
i++
}
}
printHtmlPart(102)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423146793134L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
