
<%@ page import="planification.Projet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projet.label', default: 'Projet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-projet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-projet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list projet">
			
				<g:if test="${projetInstance?.actions}">
				<li class="fieldcontain">
					<span id="actions-label" class="property-label"><g:message code="projet.actions.label" default="Actions" /></span>
					
						<g:each in="${projetInstance.actions}" var="a">
						<span class="property-value" aria-labelledby="actions-label"><g:link controller="action" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projetInstance?.objectif}">
				<li class="fieldcontain">
					<span id="objectif-label" class="property-label"><g:message code="projet.objectif.label" default="Objectif" /></span>
					
						<span class="property-value" aria-labelledby="objectif-label"><g:link controller="objectif" action="show" id="${projetInstance?.objectif?.id}">${projetInstance?.objectif?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="projet.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${projetInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="projet.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${projetInstance?.entreprise?.id}">${projetInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="projet.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${projetInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projetInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projetInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
