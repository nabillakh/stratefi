
<%@ page import="entreprises.Demande" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'demande.label', default: 'Demande')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-demande" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-demande" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list demande">
			
				<g:if test="${demandeInstance?.reponses}">
				<li class="fieldcontain">
					<span id="reponses-label" class="property-label"><g:message code="demande.reponses.label" default="Reponses" /></span>
					
						<g:each in="${demandeInstance.reponses}" var="r">
						<span class="property-value" aria-labelledby="reponses-label"><g:link controller="reponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="demande.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${demandeInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="demande.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${demandeInstance?.user?.id}">${demandeInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="demande.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${demandeInstance?.entreprise?.id}">${demandeInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="demande.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${demandeInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.urlSite}">
				<li class="fieldcontain">
					<span id="urlSite-label" class="property-label"><g:message code="demande.urlSite.label" default="Url Site" /></span>
					
						<span class="property-value" aria-labelledby="urlSite-label"><g:fieldValue bean="${demandeInstance}" field="urlSite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.besoinMarche}">
				<li class="fieldcontain">
					<span id="besoinMarche-label" class="property-label"><g:message code="demande.besoinMarche.label" default="Besoin Marche" /></span>
					
						<span class="property-value" aria-labelledby="besoinMarche-label"><g:fieldValue bean="${demandeInstance}" field="besoinMarche"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="demande.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="typeProduit" action="show" id="${demandeInstance?.type?.id}">${demandeInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.disruption}">
				<li class="fieldcontain">
					<span id="disruption-label" class="property-label"><g:message code="demande.disruption.label" default="Disruption" /></span>
					
						<span class="property-value" aria-labelledby="disruption-label"><g:fieldValue bean="${demandeInstance}" field="disruption"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.montantRecherche}">
				<li class="fieldcontain">
					<span id="montantRecherche-label" class="property-label"><g:message code="demande.montantRecherche.label" default="Montant Recherche" /></span>
					
						<span class="property-value" aria-labelledby="montantRecherche-label"><g:fieldValue bean="${demandeInstance}" field="montantRecherche"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.tresorerieActuelle}">
				<li class="fieldcontain">
					<span id="tresorerieActuelle-label" class="property-label"><g:message code="demande.tresorerieActuelle.label" default="Tresorerie Actuelle" /></span>
					
						<span class="property-value" aria-labelledby="tresorerieActuelle-label"><g:fieldValue bean="${demandeInstance}" field="tresorerieActuelle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.chargesMensuellesActuelles}">
				<li class="fieldcontain">
					<span id="chargesMensuellesActuelles-label" class="property-label"><g:message code="demande.chargesMensuellesActuelles.label" default="Charges Mensuelles Actuelles" /></span>
					
						<span class="property-value" aria-labelledby="chargesMensuellesActuelles-label"><g:fieldValue bean="${demandeInstance}" field="chargesMensuellesActuelles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="demande.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${demandeInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${demandeInstance?.publie}">
				<li class="fieldcontain">
					<span id="publie-label" class="property-label"><g:message code="demande.publie.label" default="Publie" /></span>
					
						<span class="property-value" aria-labelledby="publie-label"><g:formatBoolean boolean="${demandeInstance?.publie}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:demandeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${demandeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
