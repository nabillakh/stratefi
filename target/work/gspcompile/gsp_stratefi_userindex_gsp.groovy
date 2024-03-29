import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_userindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'compte.label', default: 'Compte'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('message','g',10,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(4)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(5)
invokeTag('message','g',13,['code':("default.home.label")],-1)
printHtmlPart(6)
createTagBody(2, {->
invokeTag('message','g',14,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("create"),'action':("create")],2)
printHtmlPart(7)
invokeTag('message','g',18,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(8)
if(true && (flash.message)) {
printHtmlPart(9)
expressionOut.print(flash.message)
printHtmlPart(10)
}
printHtmlPart(11)
invokeTag('sortableColumn','g',26,['property':("username"),'title':(message(code: 'compte.username.label', default: 'Username'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',28,['property':("password"),'title':(message(code: 'compte.password.label', default: 'Password'))],-1)
printHtmlPart(13)
invokeTag('message','g',30,['code':("compte.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',32,['property':("accountExpired"),'title':(message(code: 'compte.accountExpired.label', default: 'Account Expired'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',34,['property':("accountLocked"),'title':(message(code: 'compte.accountLocked.label', default: 'Account Locked'))],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',36,['property':("enabled"),'title':(message(code: 'compte.enabled.label', default: 'Enabled'))],-1)
printHtmlPart(15)
loop:{
int i = 0
for( compteInstance in (compteInstanceList) ) {
printHtmlPart(16)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(17)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: compteInstance, field: "username"))
})
invokeTag('link','g',44,['action':("show"),'id':(compteInstance.id)],3)
printHtmlPart(18)
expressionOut.print(fieldValue(bean: compteInstance, field: "password"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: compteInstance, field: "entreprise"))
printHtmlPart(18)
invokeTag('formatBoolean','g',50,['boolean':(compteInstance.accountExpired)],-1)
printHtmlPart(18)
invokeTag('formatBoolean','g',52,['boolean':(compteInstance.accountLocked)],-1)
printHtmlPart(18)
invokeTag('formatBoolean','g',54,['boolean':(compteInstance.enabled)],-1)
printHtmlPart(19)
i++
}
}
printHtmlPart(20)
invokeTag('paginate','g',61,['total':(compteInstanceCount ?: 0)],-1)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',64,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421682602464L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
