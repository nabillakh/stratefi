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
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("${acteurInstance?.nomSEO} - Spécialiste ${acteurInstance?.typeActeur.nom} pour PME et startup")],-1)
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
invokeTag('captureHead','sitemesh',18,[:],1)
printHtmlPart(8)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(9)
invokeTag('set','g',22,['var':("lien"),'value':("http://comparateur.alloratio.com/")],-1)
printHtmlPart(10)
}
printHtmlPart(10)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(9)
invokeTag('set','g',25,['var':("lien"),'value':(request.contextPath)],-1)
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
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(23)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(24)
expressionOut.print(acteurInstance?.typeActeur.nom)
printHtmlPart(25)
if(true && ((acteurInstance.publie))) {
printHtmlPart(26)
expressionOut.print(raw(acteurInstance?.description))
printHtmlPart(26)
}
else {
printHtmlPart(27)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(28)
}
printHtmlPart(29)
if(true && ((acteurInstance.publie))) {
printHtmlPart(30)
expressionOut.print(acteurInstance?.url)
printHtmlPart(31)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(32)
}
else {
printHtmlPart(33)
}
printHtmlPart(34)
if(true && (acteurInstance.linkedin)) {
printHtmlPart(35)
expressionOut.print(acteurInstance.linkedin)
printHtmlPart(36)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(37)
}
printHtmlPart(38)
if(true && (acteurInstance.facebook)) {
printHtmlPart(39)
expressionOut.print(acteurInstance.facebook)
printHtmlPart(40)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(41)
}
printHtmlPart(42)
if(true && (acteurInstance.twitter)) {
printHtmlPart(39)
expressionOut.print(acteurInstance.twitter)
printHtmlPart(43)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(44)
}
printHtmlPart(42)
if(true && (acteurInstance.googleplus)) {
printHtmlPart(45)
expressionOut.print(acteurInstance.googleplus)
printHtmlPart(46)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(47)
}
printHtmlPart(48)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(49)
loop:{
int i = 0
for( item in (perimetre) ) {
printHtmlPart(50)
expressionOut.print(lien)
printHtmlPart(51)
expressionOut.print(item.id)
printHtmlPart(52)
expressionOut.print(item.nomSEO)
printHtmlPart(53)
expressionOut.print(item.nom)
printHtmlPart(54)
expressionOut.print(item.nom)
printHtmlPart(55)
i++
}
}
printHtmlPart(56)
expressionOut.print(acteurInstance.nom)
printHtmlPart(57)
expressionOut.print(acteurInstance.nom)
printHtmlPart(58)
for( _it6477676 in (acteurInstance.produits) ) {
changeItVariable(_it6477676)
printHtmlPart(59)
expressionOut.print(acteurInstance.nom)
printHtmlPart(60)
expressionOut.print(it.typeProduit.nom)
printHtmlPart(61)
expressionOut.print(acteurInstance.nom)
printHtmlPart(62)
expressionOut.print(it.description)
printHtmlPart(63)
expressionOut.print(acteurInstance.nom)
printHtmlPart(64)
expressionOut.print(it.coutFixeDebut)
printHtmlPart(65)
expressionOut.print(it.coutFixeFin)
printHtmlPart(66)
expressionOut.print(it.coutVarEntrepriseMin)
printHtmlPart(67)
expressionOut.print(it.montantMinimum)
printHtmlPart(68)
expressionOut.print(it.montantMaximum)
printHtmlPart(69)
expressionOut.print(it.recurrent)
printHtmlPart(70)
}
printHtmlPart(71)
if(true && ((acteurInstance.publie))) {
printHtmlPart(72)
}
else {
printHtmlPart(73)
}
printHtmlPart(74)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(75)
loop:{
int i = 0
for( item in (typeProjets) ) {
printHtmlPart(50)
expressionOut.print(lien)
printHtmlPart(76)
expressionOut.print(item.id)
printHtmlPart(52)
expressionOut.print(item.nomSEO)
printHtmlPart(53)
expressionOut.print(item.nom)
printHtmlPart(77)
expressionOut.print(item.nom)
printHtmlPart(55)
i++
}
}
printHtmlPart(78)
expressionOut.print(acteurInstance.typeActeur.nom)
printHtmlPart(79)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(80)
if(true && (i>0)) {
printHtmlPart(81)
expressionOut.print(i)
printHtmlPart(82)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(83)
}
else {
printHtmlPart(84)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(83)
}
printHtmlPart(85)
i++
}
}
printHtmlPart(86)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(80)
if(true && (i>0)) {
printHtmlPart(87)
}
else {
printHtmlPart(88)
}
printHtmlPart(89)
expressionOut.print(lien)
printHtmlPart(90)
expressionOut.print(acteurInstance.id)
printHtmlPart(52)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(91)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(92)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(93)
if(true && ((acteurInstance.publie))) {
printHtmlPart(94)
expressionOut.print(request.contextPath)
printHtmlPart(17)
expressionOut.print(acteurInstance?.image)
printHtmlPart(19)
}
else {
printHtmlPart(95)
}
printHtmlPart(96)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(97)
expressionOut.print(lien)
printHtmlPart(90)
expressionOut.print(acteurInstance.id)
printHtmlPart(52)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(91)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(22)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(98)
i++
}
}
printHtmlPart(99)
expressionOut.print(lien)
printHtmlPart(100)
loop:{
int i = 0
for( item in (typeProduits1) ) {
printHtmlPart(101)
expressionOut.print(item.id)
printHtmlPart(23)
expressionOut.print(item.nom)
printHtmlPart(102)
i++
}
}
printHtmlPart(103)
loop:{
int i = 0
for( item in (secteurs1) ) {
printHtmlPart(101)
expressionOut.print(item.id)
printHtmlPart(23)
expressionOut.print(item.nom)
printHtmlPart(102)
i++
}
}
printHtmlPart(104)
loop:{
int i = 0
for( item in (typesProjet1) ) {
printHtmlPart(101)
expressionOut.print(item.id)
printHtmlPart(23)
expressionOut.print(item.nom)
printHtmlPart(102)
i++
}
}
printHtmlPart(105)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1423689371341L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
