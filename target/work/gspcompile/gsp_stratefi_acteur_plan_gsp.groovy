import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_acteur_plan_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/acteur/_plan.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
for( _it30455167 in (plans) ) {
changeItVariable(_it30455167)
printHtmlPart(1)
expressionOut.print(it.mois)
printHtmlPart(2)
}
printHtmlPart(3)
loop:{
int k = 0
for( plan in (plans) ) {
printHtmlPart(4)
expressionOut.print(k)
printHtmlPart(5)
expressionOut.print(plan.capaciteDAutofinancement)
printHtmlPart(6)
expressionOut.print(k)
printHtmlPart(7)
k++
}
}
printHtmlPart(8)
for( _it20695995 in (plans) ) {
changeItVariable(_it20695995)
printHtmlPart(9)
expressionOut.print(it.cessionDImmobilisations)
printHtmlPart(10)
}
printHtmlPart(11)
for( _it12360983 in (plans) ) {
changeItVariable(_it12360983)
printHtmlPart(9)
expressionOut.print(it.augmentationCapital)
printHtmlPart(10)
}
printHtmlPart(12)
for( _it15564683 in (plans) ) {
changeItVariable(_it15564683)
printHtmlPart(9)
expressionOut.print(it.subventions)
printHtmlPart(10)
}
printHtmlPart(13)
for( _it5278056 in (plans) ) {
changeItVariable(_it5278056)
printHtmlPart(9)
expressionOut.print(it.emprunts)
printHtmlPart(10)
}
printHtmlPart(14)
for( _it23938688 in (plans) ) {
changeItVariable(_it23938688)
printHtmlPart(15)
expressionOut.print(it.ressources)
printHtmlPart(2)
}
printHtmlPart(16)
for( _it19900490 in (plans) ) {
changeItVariable(_it19900490)
printHtmlPart(9)
expressionOut.print(it.dividendesVerses)
printHtmlPart(10)
}
printHtmlPart(17)
for( _it30517356 in (plans) ) {
changeItVariable(_it30517356)
printHtmlPart(9)
expressionOut.print(it.investissements)
printHtmlPart(10)
}
printHtmlPart(18)
for( _it25718339 in (plans) ) {
changeItVariable(_it25718339)
printHtmlPart(9)
expressionOut.print(it.remboursementCapitalDesEmprunts)
printHtmlPart(10)
}
printHtmlPart(19)
for( _it33494373 in (plans) ) {
changeItVariable(_it33494373)
printHtmlPart(9)
expressionOut.print(it.variationDuBFRE)
printHtmlPart(10)
}
printHtmlPart(20)
for( _it30786020 in (plans) ) {
changeItVariable(_it30786020)
printHtmlPart(15)
expressionOut.print(it.emplois)
printHtmlPart(2)
}
printHtmlPart(21)
for( _it11301667 in (plans) ) {
changeItVariable(_it11301667)
printHtmlPart(15)
expressionOut.print(- it.emplois + it.ressources)
printHtmlPart(2)
}
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1424084609761L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
