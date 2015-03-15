
<%@ page import="entreprises.AnalyseFinanciere" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'analyseFinanciere.label', default: 'AnalyseFinanciere')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-analyseFinanciere" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-analyseFinanciere" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list analyseFinanciere">
			
				<g:if test="${analyseFinanciereInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="analyseFinanciere.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${analyseFinanciereInstance?.entreprise?.id}">${analyseFinanciereInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${analyseFinanciereInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="analyseFinanciere.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${analyseFinanciereInstance?.user?.id}">${analyseFinanciereInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${analyseFinanciereInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="analyseFinanciere.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${analyseFinanciereInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${analyseFinanciereInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="analyseFinanciere.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${analyseFinanciereInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${analyseFinanciereInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="analyseFinanciere.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${analyseFinanciereInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${analyseFinanciereInstance?.siren}">
				<li class="fieldcontain">
					<span id="siren-label" class="property-label"><g:message code="analyseFinanciere.siren.label" default="Siren" /></span>
					
						<span class="property-value" aria-labelledby="siren-label"><g:fieldValue bean="${analyseFinanciereInstance}" field="siren"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:analyseFinanciereInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${analyseFinanciereInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
