import entreprises.Document
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_document_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/document/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: documentInstance, field: 'filename', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("document.filename.label"),'default':("Filename")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("filename"),'required':(""),'value':(documentInstance?.filename)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: documentInstance, field: 'filedata', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("document.filedata.label"),'default':("Filedata")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: documentInstance, field: 'uploadDate', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("document.uploadDate.label"),'default':("Upload Date")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',28,['name':("uploadDate"),'precision':("day"),'value':(documentInstance?.uploadDate)],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1426666513709L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
