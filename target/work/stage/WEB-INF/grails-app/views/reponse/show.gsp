
<%@ page import="entreprises.Reponse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reponse.label', default: 'Reponse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reponse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reponse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reponse">
			
				<g:if test="${reponseInstance?.acteur}">
				<li class="fieldcontain">
					<span id="acteur-label" class="property-label"><g:message code="reponse.acteur.label" default="Acteur" /></span>
					
						<span class="property-value" aria-labelledby="acteur-label"><g:link controller="acteur" action="show" id="${reponseInstance?.acteur?.id}">${reponseInstance?.acteur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reponseInstance?.texte}">
				<li class="fieldcontain">
					<span id="texte-label" class="property-label"><g:message code="reponse.texte.label" default="Texte" /></span>
					
						<span class="property-value" aria-labelledby="texte-label"><g:fieldValue bean="${reponseInstance}" field="texte"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reponseInstance?.taux}">
				<li class="fieldcontain">
					<span id="taux-label" class="property-label"><g:message code="reponse.taux.label" default="Taux" /></span>
					
						<span class="property-value" aria-labelledby="taux-label"><g:fieldValue bean="${reponseInstance}" field="taux"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reponseInstance?.montant}">
				<li class="fieldcontain">
					<span id="montant-label" class="property-label"><g:message code="reponse.montant.label" default="Montant" /></span>
					
						<span class="property-value" aria-labelledby="montant-label"><g:fieldValue bean="${reponseInstance}" field="montant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reponseInstance?.commission}">
				<li class="fieldcontain">
					<span id="commission-label" class="property-label"><g:message code="reponse.commission.label" default="Commission" /></span>
					
						<span class="property-value" aria-labelledby="commission-label"><g:fieldValue bean="${reponseInstance}" field="commission"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reponseInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="reponse.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${reponseInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reponseInstance?.demande}">
				<li class="fieldcontain">
					<span id="demande-label" class="property-label"><g:message code="reponse.demande.label" default="Demande" /></span>
					
						<span class="property-value" aria-labelledby="demande-label"><g:link controller="demande" action="show" id="${reponseInstance?.demande?.id}">${reponseInstance?.demande?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reponseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reponseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
