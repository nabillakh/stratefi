<%@ page import="stratefi.comparateur.Image" %>


id de l'acteur


<input type="text" id="acteur" name="acteurInstance" value="${acteurInstance?.id}"/>

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

