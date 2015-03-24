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
expressionOut.print(request.contextPath)
printHtmlPart(8)
expressionOut.print(request.contextPath)
printHtmlPart(9)
})
invokeTag('captureHead','sitemesh',23,[:],1)
printHtmlPart(10)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(11)
invokeTag('set','g',27,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(12)
}
printHtmlPart(12)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(11)
invokeTag('set','g',30,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(12)
}
printHtmlPart(13)
invokeTag('set','g',35,['var':("phrase"),'value':("Description de ${acteurInstance?.nom}")],-1)
printHtmlPart(14)
invokeTag('render','g',36,['template':("/user/header")],-1)
printHtmlPart(15)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(16)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(17)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(18)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(19)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(20)
expressionOut.print(lien)
printHtmlPart(21)
invokeTag('render','g',81,['template':("/formulaire/formComparateur")],-1)
printHtmlPart(22)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(23)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(24)
expressionOut.print(request.contextPath)
printHtmlPart(25)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(26)
if(true && ((acteurInstance.publie))) {
printHtmlPart(27)
expressionOut.print(request.contextPath)
printHtmlPart(28)
expressionOut.print(acteurInstance?.image)
printHtmlPart(29)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(30)
}
else {
printHtmlPart(27)
expressionOut.print(request.contextPath)
printHtmlPart(31)
}
printHtmlPart(32)
if(true && ((acteurInstance.publie))) {
printHtmlPart(33)
expressionOut.print(acteurInstance?.description.decodeHTML())
printHtmlPart(33)
}
else {
printHtmlPart(34)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(35)
expressionOut.print(lien)
printHtmlPart(36)
}
printHtmlPart(37)
if(true && ((acteurInstance.publie))) {
printHtmlPart(38)
if(true && ((acteurInstance.publie))) {
printHtmlPart(39)
expressionOut.print(acteurInstance?.url)
printHtmlPart(40)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(41)
}
printHtmlPart(42)
if(true && (acteurInstance.facebook)) {
printHtmlPart(43)
expressionOut.print(acteurInstance.facebook)
printHtmlPart(44)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(45)
}
printHtmlPart(46)
if(true && (acteurInstance.twitter)) {
printHtmlPart(47)
expressionOut.print(acteurInstance.twitter)
printHtmlPart(48)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(49)
}
printHtmlPart(46)
if(true && (acteurInstance.googleplus)) {
printHtmlPart(50)
expressionOut.print(acteurInstance.googleplus)
printHtmlPart(51)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(52)
}
printHtmlPart(46)
if(true && (acteurInstance.linkedin)) {
printHtmlPart(50)
expressionOut.print(acteurInstance.linkedin)
printHtmlPart(53)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(54)
}
printHtmlPart(55)
}
printHtmlPart(56)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(57)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(58)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(59)
expressionOut.print(acteurInstance?.typeActeur?.nom)
printHtmlPart(60)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(61)
loop:{
int i = 0
for( item in (typeProjets) ) {
printHtmlPart(62)
expressionOut.print(lien)
printHtmlPart(63)
expressionOut.print(item.id)
printHtmlPart(64)
expressionOut.print(item.nomSEO)
printHtmlPart(65)
expressionOut.print(item.nom)
printHtmlPart(66)
expressionOut.print(item.nom)
printHtmlPart(67)
i++
}
}
printHtmlPart(68)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(69)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(70)
loop:{
int i = 0
for( item in (perimetre) ) {
printHtmlPart(62)
expressionOut.print(lien)
printHtmlPart(71)
expressionOut.print(item.id)
printHtmlPart(64)
expressionOut.print(item.nomSEO)
printHtmlPart(65)
expressionOut.print(item.nom)
printHtmlPart(66)
expressionOut.print(item.nom)
printHtmlPart(67)
i++
}
}
printHtmlPart(72)
expressionOut.print(acteurInstance.nom)
printHtmlPart(73)
expressionOut.print(acteurInstance.nom)
printHtmlPart(74)
for( _it7700504 in (acteurInstance.produits) ) {
changeItVariable(_it7700504)
printHtmlPart(75)
expressionOut.print(acteurInstance.nom)
printHtmlPart(76)
expressionOut.print(it.typeProduit.nom)
printHtmlPart(77)
expressionOut.print(acteurInstance.nom)
printHtmlPart(78)
expressionOut.print(it.description)
printHtmlPart(79)
expressionOut.print(acteurInstance.nom)
printHtmlPart(80)
expressionOut.print(it.coutFixeDebut)
printHtmlPart(81)
expressionOut.print(it.coutFixeFin)
printHtmlPart(82)
expressionOut.print(it.tempsMinimum)
printHtmlPart(83)
expressionOut.print(it?.tempsMaximum)
printHtmlPart(84)
expressionOut.print(it.coutVarEntrepriseMin)
printHtmlPart(83)
expressionOut.print(it?.coutVarEntrepriseMax)
printHtmlPart(85)
expressionOut.print(it.montantMinimum)
printHtmlPart(83)
expressionOut.print(it.montantMaximum)
printHtmlPart(86)
expressionOut.print(it.montantMinimum)
printHtmlPart(83)
expressionOut.print(it.montantMaximum)
printHtmlPart(87)
expressionOut.print(it.recurrentMin)
printHtmlPart(83)
expressionOut.print(it?.recurrentMax)
printHtmlPart(88)
}
printHtmlPart(89)
if(true && ((acteurInstance.publie))) {
printHtmlPart(90)
}
else {
printHtmlPart(91)
}
printHtmlPart(92)
expressionOut.print(acteurInstance.typeActeur.nom)
printHtmlPart(93)
expressionOut.print(acteurInstance.nom)
printHtmlPart(94)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(95)
if(true && (i>0)) {
printHtmlPart(96)
expressionOut.print(i)
printHtmlPart(97)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(98)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(99)
}
else {
printHtmlPart(100)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(98)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(99)
}
printHtmlPart(101)
i++
}
}
printHtmlPart(102)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(95)
if(true && (i>0)) {
printHtmlPart(103)
}
else {
printHtmlPart(104)
}
printHtmlPart(105)
expressionOut.print(lien)
printHtmlPart(106)
expressionOut.print(acteurInstance.id)
printHtmlPart(64)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(107)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(98)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(108)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(109)
if(true && ((acteurInstance.publie))) {
printHtmlPart(110)
expressionOut.print(request.contextPath)
printHtmlPart(28)
expressionOut.print(acteurInstance?.image)
printHtmlPart(30)
}
else {
printHtmlPart(111)
}
printHtmlPart(112)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(113)
expressionOut.print(lien)
printHtmlPart(106)
expressionOut.print(acteurInstance.id)
printHtmlPart(64)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(107)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(98)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(114)
i++
}
}
printHtmlPart(115)
expressionOut.print(lien)
printHtmlPart(116)
expressionOut.print(request.contextPath)
printHtmlPart(117)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427124577975L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
