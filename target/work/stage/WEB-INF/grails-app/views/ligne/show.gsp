
<%@ page import="planification.Ligne" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ligne.label', default: 'Ligne')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ligne" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ligne" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ligne">
			
				<g:if test="${ligneInstance?.valeur}">
				<li class="fieldcontain">
					<span id="valeur-label" class="property-label"><g:message code="ligne.valeur.label" default="Valeur" /></span>
					
						<span class="property-value" aria-labelledby="valeur-label"><g:fieldValue bean="${ligneInstance}" field="valeur"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ligneInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="ligne.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${ligneInstance?.entreprise?.id}">${ligneInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ligneInstance?.mouvement}">
				<li class="fieldcontain">
					<span id="mouvement-label" class="property-label"><g:message code="ligne.mouvement.label" default="Mouvement" /></span>
					
						<g:each in="${ligneInstance.mouvement}" var="m">
						<span class="property-value" aria-labelledby="mouvement-label"><g:link controller="mouvement" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ligneInstance?.action}">
				<li class="fieldcontain">
					<span id="action-label" class="property-label"><g:message code="ligne.action.label" default="Action" /></span>
					
						<span class="property-value" aria-labelledby="action-label"><g:link controller="action" action="show" id="${ligneInstance?.action?.id}">${ligneInstance?.action?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ligneInstance?.indicateur}">
				<li class="fieldcontain">
					<span id="indicateur-label" class="property-label"><g:message code="ligne.indicateur.label" default="Indicateur" /></span>
					
						<span class="property-value" aria-labelledby="indicateur-label"><g:link controller="indicateur" action="show" id="${ligneInstance?.indicateur?.id}">${ligneInstance?.indicateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ligneInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ligneInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
