import entreprises.Document
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_documentshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/document/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'document.label', default: 'Document'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (documentInstance?.filename)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("document.filename.label"),'default':("Filename")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(documentInstance),'field':("filename")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (documentInstance?.filedata)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("document.filedata.label"),'default':("Filedata")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (documentInstance?.uploadDate)) {
printHtmlPart(19)
invokeTag('message','g',44,['code':("document.uploadDate.label"),'default':("Upload Date")],-1)
printHtmlPart(20)
invokeTag('formatDate','g',46,['date':(documentInstance?.uploadDate)],-1)
printHtmlPart(16)
}
printHtmlPart(21)
createTagBody(2, {->
printHtmlPart(22)
createTagBody(3, {->
invokeTag('message','g',54,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',54,['class':("edit"),'action':("edit"),'resource':(documentInstance)],3)
printHtmlPart(23)
invokeTag('actionSubmit','g',55,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(24)
})
invokeTag('form','g',57,['url':([resource:documentInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(25)
createTagBody(2, {->
expressionOut.print(documentInstance.filename)
})
invokeTag('link','g',59,['action':("download"),'id':(documentInstance.id)],2)
printHtmlPart(26)
createTagBody(2, {->
printHtmlPart(27)
invokeTag('submitButton','g',65,['name':("upload"),'class':("save"),'value':("Upload")],-1)
printHtmlPart(24)
})
invokeTag('uploadForm','g',67,['action':("upload")],2)
printHtmlPart(3)
})
invokeTag('captureBody','sitemesh',68,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426667453752L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
