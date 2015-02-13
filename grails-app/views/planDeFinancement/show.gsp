
<%@ page import="compte.PlanDeFinancement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planDeFinancement.label', default: 'PlanDeFinancement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-planDeFinancement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-planDeFinancement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list planDeFinancement">
			
				<g:if test="${planDeFinancementInstance?.capaciteDAutofinancement}">
				<li class="fieldcontain">
					<span id="capaciteDAutofinancement-label" class="property-label"><g:message code="planDeFinancement.capaciteDAutofinancement.label" default="Capacite DA utofinancement" /></span>
					
						<span class="property-value" aria-labelledby="capaciteDAutofinancement-label"><g:fieldValue bean="${planDeFinancementInstance}" field="capaciteDAutofinancement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.cessionDImmobilisations}">
				<li class="fieldcontain">
					<span id="cessionDImmobilisations-label" class="property-label"><g:message code="planDeFinancement.cessionDImmobilisations.label" default="Cession DI mmobilisations" /></span>
					
						<span class="property-value" aria-labelledby="cessionDImmobilisations-label"><g:fieldValue bean="${planDeFinancementInstance}" field="cessionDImmobilisations"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.augmentationCapital}">
				<li class="fieldcontain">
					<span id="augmentationCapital-label" class="property-label"><g:message code="planDeFinancement.augmentationCapital.label" default="Augmentation Capital" /></span>
					
						<span class="property-value" aria-labelledby="augmentationCapital-label"><g:fieldValue bean="${planDeFinancementInstance}" field="augmentationCapital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.subventions}">
				<li class="fieldcontain">
					<span id="subventions-label" class="property-label"><g:message code="planDeFinancement.subventions.label" default="Subventions" /></span>
					
						<span class="property-value" aria-labelledby="subventions-label"><g:fieldValue bean="${planDeFinancementInstance}" field="subventions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.emprunts}">
				<li class="fieldcontain">
					<span id="emprunts-label" class="property-label"><g:message code="planDeFinancement.emprunts.label" default="Emprunts" /></span>
					
						<span class="property-value" aria-labelledby="emprunts-label"><g:fieldValue bean="${planDeFinancementInstance}" field="emprunts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.dividendesVerses}">
				<li class="fieldcontain">
					<span id="dividendesVerses-label" class="property-label"><g:message code="planDeFinancement.dividendesVerses.label" default="Dividendes Verses" /></span>
					
						<span class="property-value" aria-labelledby="dividendesVerses-label"><g:fieldValue bean="${planDeFinancementInstance}" field="dividendesVerses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.investissements}">
				<li class="fieldcontain">
					<span id="investissements-label" class="property-label"><g:message code="planDeFinancement.investissements.label" default="Investissements" /></span>
					
						<span class="property-value" aria-labelledby="investissements-label"><g:fieldValue bean="${planDeFinancementInstance}" field="investissements"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.remboursementCapitalDesEmprunts}">
				<li class="fieldcontain">
					<span id="remboursementCapitalDesEmprunts-label" class="property-label"><g:message code="planDeFinancement.remboursementCapitalDesEmprunts.label" default="Remboursement Capital Des Emprunts" /></span>
					
						<span class="property-value" aria-labelledby="remboursementCapitalDesEmprunts-label"><g:fieldValue bean="${planDeFinancementInstance}" field="remboursementCapitalDesEmprunts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.variationDuBFRE}">
				<li class="fieldcontain">
					<span id="variationDuBFRE-label" class="property-label"><g:message code="planDeFinancement.variationDuBFRE.label" default="Variation Du BFRE" /></span>
					
						<span class="property-value" aria-labelledby="variationDuBFRE-label"><g:fieldValue bean="${planDeFinancementInstance}" field="variationDuBFRE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.annee}">
				<li class="fieldcontain">
					<span id="annee-label" class="property-label"><g:message code="planDeFinancement.annee.label" default="Annee" /></span>
					
						<span class="property-value" aria-labelledby="annee-label"><g:fieldValue bean="${planDeFinancementInstance}" field="annee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.mois}">
				<li class="fieldcontain">
					<span id="mois-label" class="property-label"><g:message code="planDeFinancement.mois.label" default="Mois" /></span>
					
						<span class="property-value" aria-labelledby="mois-label"><g:fieldValue bean="${planDeFinancementInstance}" field="mois"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planDeFinancementInstance?.simulation}">
				<li class="fieldcontain">
					<span id="simulation-label" class="property-label"><g:message code="planDeFinancement.simulation.label" default="Simulation" /></span>
					
						<span class="property-value" aria-labelledby="simulation-label"><g:link controller="simulation" action="show" id="${planDeFinancementInstance?.simulation?.id}">${planDeFinancementInstance?.simulation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:planDeFinancementInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${planDeFinancementInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
