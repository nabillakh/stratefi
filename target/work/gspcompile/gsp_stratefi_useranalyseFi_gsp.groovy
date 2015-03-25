import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_useranalyseFi_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/analyseFi.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("comparaison")],-1)
printHtmlPart(1)
invokeTag('set','g',5,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',6,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',10,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
if((grails.util.Environment.current.name == 'production') && true) {
printHtmlPart(5)
invokeTag('set','g',15,['var':("lien"),'value':("http://comparateur.alloratio.com")],-1)
printHtmlPart(6)
}
printHtmlPart(6)
if((grails.util.Environment.current.name == 'development') && true) {
printHtmlPart(5)
invokeTag('set','g',18,['var':("lien"),'value':(request.contextPath)],-1)
printHtmlPart(6)
}
printHtmlPart(7)
invokeTag('set','g',22,['var':("phrase"),'value':("Demander une brève analyse de mon entreprise")],-1)
printHtmlPart(8)
invokeTag('render','g',23,['template':("header")],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
createTagBody(2, {->
printHtmlPart(13)
createTagBody(3, {->
printHtmlPart(14)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(15)
expressionOut.print(error.field)
printHtmlPart(16)
}
printHtmlPart(17)
invokeTag('message','g',35,['error':(error)],-1)
printHtmlPart(18)
})
invokeTag('eachError','g',36,['bean':(formulaireInstance),'var':("error")],3)
printHtmlPart(19)
})
invokeTag('hasErrors','g',38,['bean':(formulaireInstance)],2)
printHtmlPart(12)
createTagBody(2, {->
printHtmlPart(20)
invokeTag('render','g',41,['template':("/user/formfi")],-1)
printHtmlPart(21)
invokeTag('submitButton','g',45,['name':("create"),'class':("btn btn-danger "),'value':("Enregistrer")],-1)
printHtmlPart(22)
})
invokeTag('form','g',48,['url':([resource:formulaireInstance, action:'demandeAnalyseFi']),'class':("form-horizontal")],2)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',58,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427218930743L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
