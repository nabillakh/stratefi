import stratefi.comparateur.Image
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_stratefi_image_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/image/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: imageInstance, field: 'filePayload', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("image.filePayload.label"),'default':("File Payload")],-1)
printHtmlPart(2)
expressionOut.print(hasErrors(bean: imageInstance, field: 'fileType', 'error'))
printHtmlPart(3)
invokeTag('message','g',16,['code':("image.fileType.label"),'default':("File Type")],-1)
printHtmlPart(4)
invokeTag('textField','g',19,['name':("fileType"),'value':(imageInstance?.fileType)],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: imageInstance, field: 'fileName', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("image.fileName.label"),'default':("File Name")],-1)
printHtmlPart(4)
invokeTag('textField','g',28,['name':("fileName"),'value':(imageInstance?.fileName)],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: imageInstance, field: 'acteur', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("image.acteur.label"),'default':("Acteur")],-1)
printHtmlPart(4)
invokeTag('select','g',37,['id':("acteur"),'name':("acteur.id"),'from':(stratefi.comparateur.Acteur.list()),'optionKey':("id"),'value':(imageInstance?.acteur?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1421832363014L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
