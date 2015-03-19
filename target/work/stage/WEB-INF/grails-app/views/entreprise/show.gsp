
<%@ page import="entreprises.Entreprise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entreprise.label', default: 'Entreprise')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-entreprise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-entreprise" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list entreprise">
			
				<g:if test="${entrepriseInstance?.demandes}">
				<li class="fieldcontain">
					<span id="demandes-label" class="property-label"><g:message code="entreprise.demandes.label" default="Demandes" /></span>
					
						<g:each in="${entrepriseInstance.demandes}" var="d">
						<span class="property-value" aria-labelledby="demandes-label"><g:link controller="demande" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.secteur}">
				<li class="fieldcontain">
					<span id="secteur-label" class="property-label"><g:message code="entreprise.secteur.label" default="Secteur" /></span>
					
						<span class="property-value" aria-labelledby="secteur-label"><g:link controller="secteur" action="show" id="${entrepriseInstance?.secteur?.id}">${entrepriseInstance?.secteur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.descriptionActivite}">
				<li class="fieldcontain">
					<span id="descriptionActivite-label" class="property-label"><g:message code="entreprise.descriptionActivite.label" default="Description Activite" /></span>
					
						<span class="property-value" aria-labelledby="descriptionActivite-label"><g:fieldValue bean="${entrepriseInstance}" field="descriptionActivite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.siren}">
				<li class="fieldcontain">
					<span id="siren-label" class="property-label"><g:message code="entreprise.siren.label" default="Siren" /></span>
					
						<span class="property-value" aria-labelledby="siren-label"><g:fieldValue bean="${entrepriseInstance}" field="siren"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.adresse}">
				<li class="fieldcontain">
					<span id="adresse-label" class="property-label"><g:message code="entreprise.adresse.label" default="Adresse" /></span>
					
						<span class="property-value" aria-labelledby="adresse-label"><g:fieldValue bean="${entrepriseInstance}" field="adresse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.codePostal}">
				<li class="fieldcontain">
					<span id="codePostal-label" class="property-label"><g:message code="entreprise.codePostal.label" default="Code Postal" /></span>
					
						<span class="property-value" aria-labelledby="codePostal-label"><g:fieldValue bean="${entrepriseInstance}" field="codePostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.ville}">
				<li class="fieldcontain">
					<span id="ville-label" class="property-label"><g:message code="entreprise.ville.label" default="Ville" /></span>
					
						<span class="property-value" aria-labelledby="ville-label"><g:fieldValue bean="${entrepriseInstance}" field="ville"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.pays}">
				<li class="fieldcontain">
					<span id="pays-label" class="property-label"><g:message code="entreprise.pays.label" default="Pays" /></span>
					
						<span class="property-value" aria-labelledby="pays-label"><g:fieldValue bean="${entrepriseInstance}" field="pays"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrepriseInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="entreprise.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${entrepriseInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:entrepriseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${entrepriseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
