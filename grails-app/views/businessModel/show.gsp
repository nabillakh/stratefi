
<%@ page import="entreprises.BusinessModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'businessModel.label', default: 'BusinessModel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-businessModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-businessModel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list businessModel">
			
				<g:if test="${businessModelInstance?.croissanceCa}">
				<li class="fieldcontain">
					<span id="croissanceCa-label" class="property-label"><g:message code="businessModel.croissanceCa.label" default="Croissance Ca" /></span>
					
						<span class="property-value" aria-labelledby="croissanceCa-label"><g:link controller="croissanceCa" action="show" id="${businessModelInstance?.croissanceCa?.id}">${businessModelInstance?.croissanceCa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessModelInstance?.volumeClient}">
				<li class="fieldcontain">
					<span id="volumeClient-label" class="property-label"><g:message code="businessModel.volumeClient.label" default="Volume Client" /></span>
					
						<span class="property-value" aria-labelledby="volumeClient-label"><g:link controller="volumeClient" action="show" id="${businessModelInstance?.volumeClient?.id}">${businessModelInstance?.volumeClient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessModelInstance?.creanceClient}">
				<li class="fieldcontain">
					<span id="creanceClient-label" class="property-label"><g:message code="businessModel.creanceClient.label" default="Creance Client" /></span>
					
						<span class="property-value" aria-labelledby="creanceClient-label"><g:link controller="creanceClient" action="show" id="${businessModelInstance?.creanceClient?.id}">${businessModelInstance?.creanceClient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessModelInstance?.marchandise}">
				<li class="fieldcontain">
					<span id="marchandise-label" class="property-label"><g:message code="businessModel.marchandise.label" default="Marchandise" /></span>
					
						<span class="property-value" aria-labelledby="marchandise-label"><g:link controller="marchandise" action="show" id="${businessModelInstance?.marchandise?.id}">${businessModelInstance?.marchandise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessModelInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="businessModel.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${businessModelInstance?.entreprise?.id}">${businessModelInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:businessModelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${businessModelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
