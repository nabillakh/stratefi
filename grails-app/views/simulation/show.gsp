
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
			
				<g:if test="${simulationInstance?.produit}">
				<li class="fieldcontain">
					<span id="produit-label" class="property-label"><g:message code="simulation.produit.label" default="Produit" /></span>
					
						<span class="property-value" aria-labelledby="produit-label"><g:link controller="produit" action="show" id="${simulationInstance?.produit?.id}">${simulationInstance?.produit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.planDeFinancement}">
				<li class="fieldcontain">
					<span id="planDeFinancement-label" class="property-label"><g:message code="simulation.planDeFinancement.label" default="Plan De Financement" /></span>
					
						<g:each in="${simulationInstance.planDeFinancement}" var="p">
						<span class="property-value" aria-labelledby="planDeFinancement-label"><g:link controller="planDeFinancement" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.coutVarInvestisseur}">
				<li class="fieldcontain">
					<span id="coutVarInvestisseur-label" class="property-label"><g:message code="simulation.coutVarInvestisseur.label" default="Cout Var Investisseur" /></span>
					
						<span class="property-value" aria-labelledby="coutVarInvestisseur-label"><g:fieldValue bean="${simulationInstance}" field="coutVarInvestisseur"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.coutVarEntreprise}">
				<li class="fieldcontain">
					<span id="coutVarEntreprise-label" class="property-label"><g:message code="simulation.coutVarEntreprise.label" default="Cout Var Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="coutVarEntreprise-label"><g:fieldValue bean="${simulationInstance}" field="coutVarEntreprise"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.coutFixeDebut}">
				<li class="fieldcontain">
					<span id="coutFixeDebut-label" class="property-label"><g:message code="simulation.coutFixeDebut.label" default="Cout Fixe Debut" /></span>
					
						<span class="property-value" aria-labelledby="coutFixeDebut-label"><g:fieldValue bean="${simulationInstance}" field="coutFixeDebut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.coutFixeFin}">
				<li class="fieldcontain">
					<span id="coutFixeFin-label" class="property-label"><g:message code="simulation.coutFixeFin.label" default="Cout Fixe Fin" /></span>
					
						<span class="property-value" aria-labelledby="coutFixeFin-label"><g:fieldValue bean="${simulationInstance}" field="coutFixeFin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.montant}">
				<li class="fieldcontain">
					<span id="montant-label" class="property-label"><g:message code="simulation.montant.label" default="Montant" /></span>
					
						<span class="property-value" aria-labelledby="montant-label"><g:fieldValue bean="${simulationInstance}" field="montant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.temps}">
				<li class="fieldcontain">
					<span id="temps-label" class="property-label"><g:message code="simulation.temps.label" default="Temps" /></span>
					
						<span class="property-value" aria-labelledby="temps-label"><g:fieldValue bean="${simulationInstance}" field="temps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${simulationInstance?.recurrent}">
				<li class="fieldcontain">
					<span id="recurrent-label" class="property-label"><g:message code="simulation.recurrent.label" default="Recurrent" /></span>
					
						<span class="property-value" aria-labelledby="recurrent-label"><g:fieldValue bean="${simulationInstance}" field="recurrent"/></span>
					
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
