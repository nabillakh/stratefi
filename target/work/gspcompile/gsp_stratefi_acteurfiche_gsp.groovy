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
expressionOut.print(lien)
printHtmlPart(16)
expressionOut.print(lien)
printHtmlPart(17)
expressionOut.print(lien)
printHtmlPart(18)
expressionOut.print(lien)
printHtmlPart(19)
expressionOut.print(acteurInstance?.id)
printHtmlPart(20)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(21)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(22)
expressionOut.print(lien)
printHtmlPart(23)
invokeTag('render','g',63,['template':("/formulaire/formComparateur")],-1)
printHtmlPart(24)
expressionOut.print(lien)
printHtmlPart(25)
expressionOut.print(lien)
printHtmlPart(26)
expressionOut.print(lien)
printHtmlPart(27)
expressionOut.print(lien)
printHtmlPart(28)
expressionOut.print(lien)
printHtmlPart(29)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(30)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(31)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(32)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(33)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(34)
expressionOut.print(lien)
printHtmlPart(35)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(36)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(37)
expressionOut.print(request.contextPath)
printHtmlPart(38)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(39)
if(true && ((acteurInstance.publie))) {
printHtmlPart(40)
expressionOut.print(request.contextPath)
printHtmlPart(41)
expressionOut.print(acteurInstance?.image)
printHtmlPart(42)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(43)
}
else {
printHtmlPart(40)
expressionOut.print(request.contextPath)
printHtmlPart(44)
}
printHtmlPart(45)
if(true && ((acteurInstance.publie))) {
printHtmlPart(46)
expressionOut.print(acteurInstance?.description.decodeHTML())
printHtmlPart(46)
}
else {
printHtmlPart(47)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(48)
expressionOut.print(lien)
printHtmlPart(49)
}
printHtmlPart(50)
if(true && ((acteurInstance.publie))) {
printHtmlPart(51)
if(true && ((acteurInstance.publie))) {
printHtmlPart(52)
expressionOut.print(acteurInstance?.url)
printHtmlPart(53)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(54)
}
printHtmlPart(55)
if(true && (acteurInstance.facebook)) {
printHtmlPart(56)
expressionOut.print(acteurInstance.facebook)
printHtmlPart(57)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(58)
}
printHtmlPart(59)
if(true && (acteurInstance.twitter)) {
printHtmlPart(60)
expressionOut.print(acteurInstance.twitter)
printHtmlPart(61)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(62)
}
printHtmlPart(59)
if(true && (acteurInstance.googleplus)) {
printHtmlPart(63)
expressionOut.print(acteurInstance.googleplus)
printHtmlPart(64)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(65)
}
printHtmlPart(59)
if(true && (acteurInstance.linkedin)) {
printHtmlPart(63)
expressionOut.print(acteurInstance.linkedin)
printHtmlPart(66)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(67)
}
printHtmlPart(68)
}
printHtmlPart(69)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(70)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(71)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(72)
expressionOut.print(acteurInstance?.typeActeur?.nom)
printHtmlPart(73)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(74)
loop:{
int i = 0
for( item in (typeProjets) ) {
printHtmlPart(75)
expressionOut.print(lien)
printHtmlPart(76)
expressionOut.print(item.id)
printHtmlPart(20)
expressionOut.print(item.nomSEO)
printHtmlPart(77)
expressionOut.print(item.nom)
printHtmlPart(78)
expressionOut.print(item.nom)
printHtmlPart(79)
i++
}
}
printHtmlPart(80)
expressionOut.print(acteurInstance?.nomSEO)
printHtmlPart(81)
expressionOut.print(acteurInstance?.nom)
printHtmlPart(82)
loop:{
int i = 0
for( item in (perimetre) ) {
printHtmlPart(75)
expressionOut.print(lien)
printHtmlPart(83)
expressionOut.print(item.id)
printHtmlPart(20)
expressionOut.print(item.nomSEO)
printHtmlPart(77)
expressionOut.print(item.nom)
printHtmlPart(78)
expressionOut.print(item.nom)
printHtmlPart(79)
i++
}
}
printHtmlPart(84)
expressionOut.print(acteurInstance.nom)
printHtmlPart(85)
expressionOut.print(acteurInstance.nom)
printHtmlPart(86)
for( _it8230573 in (acteurInstance.produits) ) {
changeItVariable(_it8230573)
printHtmlPart(87)
expressionOut.print(acteurInstance.nom)
printHtmlPart(88)
expressionOut.print(it.typeProduit.nom)
printHtmlPart(89)
expressionOut.print(acteurInstance.nom)
printHtmlPart(90)
expressionOut.print(it.description)
printHtmlPart(91)
expressionOut.print(acteurInstance.nom)
printHtmlPart(92)
expressionOut.print(it.coutFixeDebut)
printHtmlPart(93)
expressionOut.print(it.coutFixeFin)
printHtmlPart(94)
expressionOut.print(it.tempsMinimum)
printHtmlPart(95)
expressionOut.print(it?.tempsMaximum)
printHtmlPart(96)
expressionOut.print(it.coutVarEntrepriseMin)
printHtmlPart(95)
expressionOut.print(it?.coutVarEntrepriseMax)
printHtmlPart(97)
expressionOut.print(it.montantMinimum)
printHtmlPart(95)
expressionOut.print(it.montantMaximum)
printHtmlPart(98)
expressionOut.print(it.montantMinimum)
printHtmlPart(95)
expressionOut.print(it.montantMaximum)
printHtmlPart(99)
expressionOut.print(it.recurrentMin)
printHtmlPart(95)
expressionOut.print(it?.recurrentMax)
printHtmlPart(100)
}
printHtmlPart(101)
if(true && ((acteurInstance.publie))) {
printHtmlPart(102)
}
else {
printHtmlPart(103)
}
printHtmlPart(104)
expressionOut.print(acteurInstance.typeActeur.nom)
printHtmlPart(105)
expressionOut.print(acteurInstance.nom)
printHtmlPart(106)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(107)
if(true && (i>0)) {
printHtmlPart(108)
expressionOut.print(i)
printHtmlPart(109)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(110)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(111)
}
else {
printHtmlPart(112)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(110)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(111)
}
printHtmlPart(113)
i++
}
}
printHtmlPart(114)
loop:{
int i = 0
for( acteurInstance in (concurrents) ) {
printHtmlPart(107)
if(true && (i>0)) {
printHtmlPart(115)
}
else {
printHtmlPart(116)
}
printHtmlPart(117)
expressionOut.print(lien)
printHtmlPart(19)
expressionOut.print(acteurInstance.id)
printHtmlPart(20)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(118)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(110)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(119)
expressionOut.print(fieldValue(bean: acteurInstance, field: "nom"))
printHtmlPart(120)
if(true && ((acteurInstance.publie))) {
printHtmlPart(121)
expressionOut.print(request.contextPath)
printHtmlPart(41)
expressionOut.print(acteurInstance?.image)
printHtmlPart(43)
}
else {
printHtmlPart(122)
}
printHtmlPart(123)
expressionOut.print(acteurInstance?.slogan)
printHtmlPart(124)
expressionOut.print(lien)
printHtmlPart(19)
expressionOut.print(acteurInstance.id)
printHtmlPart(20)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(118)
expressionOut.print(acteurInstance.nomSEO)
printHtmlPart(110)
expressionOut.print(acteurInstance.typeActeur.nomSEO)
printHtmlPart(125)
i++
}
}
printHtmlPart(126)
expressionOut.print(lien)
printHtmlPart(127)
expressionOut.print(request.contextPath)
printHtmlPart(128)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427293930014L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
