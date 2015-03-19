
<%@ page import="stratefi.comparateur.Formulaire" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formulaire.label', default: 'Formulaire')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formulaire" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formulaire" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formulaire">
			
				<g:if test="${formulaireInstance?.nomProjet}">
				<li class="fieldcontain">
					<span id="nomProjet-label" class="property-label"><g:message code="formulaire.nomProjet.label" default="Nom Projet" /></span>
					
						<span class="property-value" aria-labelledby="nomProjet-label"><g:fieldValue bean="${formulaireInstance}" field="nomProjet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.typeProjet}">
				<li class="fieldcontain">
					<span id="typeProjet-label" class="property-label"><g:message code="formulaire.typeProjet.label" default="Type Projet" /></span>
					
						<span class="property-value" aria-labelledby="typeProjet-label"><g:link controller="typeProjet" action="show" id="${formulaireInstance?.typeProjet?.id}">${formulaireInstance?.typeProjet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.montantRecherche}">
				<li class="fieldcontain">
					<span id="montantRecherche-label" class="property-label"><g:message code="formulaire.montantRecherche.label" default="Montant Recherche" /></span>
					
						<span class="property-value" aria-labelledby="montantRecherche-label"><g:fieldValue bean="${formulaireInstance}" field="montantRecherche"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.dureeBesoin}">
				<li class="fieldcontain">
					<span id="dureeBesoin-label" class="property-label"><g:message code="formulaire.dureeBesoin.label" default="Duree Besoin" /></span>
					
						<span class="property-value" aria-labelledby="dureeBesoin-label"><g:link controller="dureeBesoin" action="show" id="${formulaireInstance?.dureeBesoin?.id}">${formulaireInstance?.dureeBesoin?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.urgenceBesoin}">
				<li class="fieldcontain">
					<span id="urgenceBesoin-label" class="property-label"><g:message code="formulaire.urgenceBesoin.label" default="Urgence Besoin" /></span>
					
						<span class="property-value" aria-labelledby="urgenceBesoin-label"><g:link controller="urgenceBesoin" action="show" id="${formulaireInstance?.urgenceBesoin?.id}">${formulaireInstance?.urgenceBesoin?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.nomEntreprise}">
				<li class="fieldcontain">
					<span id="nomEntreprise-label" class="property-label"><g:message code="formulaire.nomEntreprise.label" default="Nom Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="nomEntreprise-label"><g:fieldValue bean="${formulaireInstance}" field="nomEntreprise"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.siren}">
				<li class="fieldcontain">
					<span id="siren-label" class="property-label"><g:message code="formulaire.siren.label" default="Siren" /></span>
					
						<span class="property-value" aria-labelledby="siren-label"><g:fieldValue bean="${formulaireInstance}" field="siren"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.secteur}">
				<li class="fieldcontain">
					<span id="secteur-label" class="property-label"><g:message code="formulaire.secteur.label" default="Secteur" /></span>
					
						<span class="property-value" aria-labelledby="secteur-label"><g:link controller="secteur" action="show" id="${formulaireInstance?.secteur?.id}">${formulaireInstance?.secteur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.proprieteMachine}">
				<li class="fieldcontain">
					<span id="proprieteMachine-label" class="property-label"><g:message code="formulaire.proprieteMachine.label" default="Propriete Machine" /></span>
					
						<span class="property-value" aria-labelledby="proprieteMachine-label"><g:link controller="proprieteMachine" action="show" id="${formulaireInstance?.proprieteMachine?.id}">${formulaireInstance?.proprieteMachine?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.proprieteLocaux}">
				<li class="fieldcontain">
					<span id="proprieteLocaux-label" class="property-label"><g:message code="formulaire.proprieteLocaux.label" default="Propriete Locaux" /></span>
					
						<span class="property-value" aria-labelledby="proprieteLocaux-label"><g:link controller="proprieteLocaux" action="show" id="${formulaireInstance?.proprieteLocaux?.id}">${formulaireInstance?.proprieteLocaux?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.croissanceCa}">
				<li class="fieldcontain">
					<span id="croissanceCa-label" class="property-label"><g:message code="formulaire.croissanceCa.label" default="Croissance Ca" /></span>
					
						<span class="property-value" aria-labelledby="croissanceCa-label"><g:link controller="croissanceCa" action="show" id="${formulaireInstance?.croissanceCa?.id}">${formulaireInstance?.croissanceCa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.volumeClient}">
				<li class="fieldcontain">
					<span id="volumeClient-label" class="property-label"><g:message code="formulaire.volumeClient.label" default="Volume Client" /></span>
					
						<span class="property-value" aria-labelledby="volumeClient-label"><g:link controller="volumeClient" action="show" id="${formulaireInstance?.volumeClient?.id}">${formulaireInstance?.volumeClient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.creanceClient}">
				<li class="fieldcontain">
					<span id="creanceClient-label" class="property-label"><g:message code="formulaire.creanceClient.label" default="Creance Client" /></span>
					
						<span class="property-value" aria-labelledby="creanceClient-label"><g:link controller="creanceClient" action="show" id="${formulaireInstance?.creanceClient?.id}">${formulaireInstance?.creanceClient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.marchandise}">
				<li class="fieldcontain">
					<span id="marchandise-label" class="property-label"><g:message code="formulaire.marchandise.label" default="Marchandise" /></span>
					
						<span class="property-value" aria-labelledby="marchandise-label"><g:link controller="marchandise" action="show" id="${formulaireInstance?.marchandise?.id}">${formulaireInstance?.marchandise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formulaireInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formulaireInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
