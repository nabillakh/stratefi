<%@ page import="stratefi.comparateur.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'filePayload', 'error')} ">
	<label for="filePayload">
		<g:message code="image.filePayload.label" default="File Payload" />
		
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'fileType', 'error')} ">
	<label for="fileType">
		<g:message code="image.fileType.label" default="File Type" />
		
	</label>
	<g:textField name="fileType" value="${imageInstance?.fileType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="image.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${imageInstance?.fileName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'acteur', 'error')} ">
	<label for="acteur">
		<g:message code="image.acteur.label" default="Acteur" />
		
	</label>
	<g:select id="acteur" name="acteur.id" from="${stratefi.comparateur.Acteur.list()}" optionKey="id" value="${imageInstance?.acteur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

