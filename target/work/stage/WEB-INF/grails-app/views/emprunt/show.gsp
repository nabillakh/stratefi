<%@ page import="stratefi.outil.Emprunt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emprunt.label', default: 'Emprunt')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-emprunt" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-emprunt" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list emprunt">
			
				<g:if test="${empruntInstance?.tauxAssurance}">
				<li class="fieldcontain">
					<span id="tauxAssurance-label" class="property-label"><g:message code="emprunt.tauxAssurance.label" default="Taux Assurance" /></span>
					
						<span class="property-value" aria-labelledby="tauxAssurance-label"><g:fieldValue bean="${empruntInstance}" field="tauxAssurance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empruntInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="emprunt.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${empruntInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empruntInstance?.montant}">
				<li class="fieldcontain">
					<span id="montant-label" class="property-label"><g:message code="emprunt.montant.label" default="Montant" /></span>
					
						<span class="property-value" aria-labelledby="montant-label"><g:fieldValue bean="${empruntInstance}" field="montant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empruntInstance?.nbMensualite}">
				<li class="fieldcontain">
					<span id="nbMensualite-label" class="property-label"><g:message code="emprunt.nbMensualite.label" default="Nb Mensualite" /></span>
					
						<span class="property-value" aria-labelledby="nbMensualite-label"><g:fieldValue bean="${empruntInstance}" field="nbMensualite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empruntInstance?.tauxInteret}">
				<li class="fieldcontain">
					<span id="tauxInteret-label" class="property-label"><g:message code="emprunt.tauxInteret.label" default="Taux Interet" /></span>
					
						<span class="property-value" aria-labelledby="tauxInteret-label"><g:fieldValue bean="${empruntInstance}" field="tauxInteret"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empruntInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empruntInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
