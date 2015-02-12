
<%@ page import="stratefi.simulateur.Simulation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'simulation.label', default: 'Simulation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-simulation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-simulation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list simulation">
			
				<g:if test="${simulationInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="simulation.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${simulationInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.typeProduit}">
				<li class="fieldcontain">
					<span id="typeProduit-label" class="property-label"><g:message code="simulation.typeProduit.label" default="Type Produit" /></span>
					
						<span class="property-value" aria-labelledby="typeProduit-label"><g:link controller="typeProduit" action="show" id="${simulationInstance?.typeProduit?.id}">${simulationInstance?.typeProduit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.planDeFinancement}">
				<li class="fieldcontain">
					<span id="planDeFinancement-label" class="property-label"><g:message code="simulation.planDeFinancement.label" default="Plan De Financement" /></span>
					
						<span class="property-value" aria-labelledby="planDeFinancement-label"><g:link controller="planDeFinancement" action="show" id="${simulationInstance?.planDeFinancement?.id}">${simulationInstance?.planDeFinancement?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:simulationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${simulationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
