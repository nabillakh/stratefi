
<%@ page import="stratefi.comparateur.Produit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produit.label', default: 'Produit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-produit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-produit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list produit">
			
				<g:if test="${produitInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="produit.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${produitInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="produit.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${produitInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.typeProduit}">
				<li class="fieldcontain">
					<span id="typeProduit-label" class="property-label"><g:message code="produit.typeProduit.label" default="Type Produit" /></span>
					
						<span class="property-value" aria-labelledby="typeProduit-label"><g:link controller="typeProduit" action="show" id="${produitInstance?.typeProduit?.id}">${produitInstance?.typeProduit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.coutVarInvestisseurMin}">
				<li class="fieldcontain">
					<span id="coutVarInvestisseurMin-label" class="property-label"><g:message code="produit.coutVarInvestisseurMin.label" default="Cout Var Investisseur" /></span>
					
						<span class="property-value" aria-labelledby="coutVarInvestisseurMin-label"><g:fieldValue bean="${produitInstance}" field="coutVarInvestisseurMin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.coutVarEntrepriseMin}">
				<li class="fieldcontain">
					<span id="coutVarEntrepriseMin-label" class="property-label"><g:message code="produit.coutVarEntrepriseMin.label" default="Cout Var Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="coutVarEntrepriseMin-label"><g:fieldValue bean="${produitInstance}" field="coutVarEntrepriseMin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.coutFixeDebut}">
				<li class="fieldcontain">
					<span id="coutFixeDebut-label" class="property-label"><g:message code="produit.coutFixeDebut.label" default="Cout Fixe Debut" /></span>
					
						<span class="property-value" aria-labelledby="coutFixeDebut-label"><g:fieldValue bean="${produitInstance}" field="coutFixeDebut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.coutFixeFin}">
				<li class="fieldcontain">
					<span id="coutFixeFin-label" class="property-label"><g:message code="produit.coutFixeFin.label" default="Cout Fixe Fin" /></span>
					
						<span class="property-value" aria-labelledby="coutFixeFin-label"><g:fieldValue bean="${produitInstance}" field="coutFixeFin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.montantMinimum}">
				<li class="fieldcontain">
					<span id="montantMinimum-label" class="property-label"><g:message code="produit.montantMinimum.label" default="Montant Minimum" /></span>
					
						<span class="property-value" aria-labelledby="montantMinimum-label"><g:fieldValue bean="${produitInstance}" field="montantMinimum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.montantMaximum}">
				<li class="fieldcontain">
					<span id="montantMaximum-label" class="property-label"><g:message code="produit.montantMaximum.label" default="Montant Maximum" /></span>
					
						<span class="property-value" aria-labelledby="montantMaximum-label"><g:fieldValue bean="${produitInstance}" field="montantMaximum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.acteur}">
				<li class="fieldcontain">
					<span id="acteur-label" class="property-label"><g:message code="produit.acteur.label" default="Acteur" /></span>
					
						<span class="property-value" aria-labelledby="acteur-label"><g:link controller="acteur" action="show" id="${produitInstance?.acteur?.id}">${produitInstance?.acteur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:produitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${produitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
