<%@ page import="compte.PlanDeFinancement" %>



<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'capaciteDAutofinancement', 'error')} ">
	<label for="capaciteDAutofinancement">
		<g:message code="planDeFinancement.capaciteDAutofinancement.label" default="Capacite DA utofinancement" />
		
	</label>
	<g:field name="capaciteDAutofinancement" value="${fieldValue(bean: planDeFinancementInstance, field: 'capaciteDAutofinancement')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'cessionDImmobilisations', 'error')} ">
	<label for="cessionDImmobilisations">
		<g:message code="planDeFinancement.cessionDImmobilisations.label" default="Cession DI mmobilisations" />
		
	</label>
	<g:field name="cessionDImmobilisations" value="${fieldValue(bean: planDeFinancementInstance, field: 'cessionDImmobilisations')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'augmentationCapital', 'error')} ">
	<label for="augmentationCapital">
		<g:message code="planDeFinancement.augmentationCapital.label" default="Augmentation Capital" />
		
	</label>
	<g:field name="augmentationCapital" value="${fieldValue(bean: planDeFinancementInstance, field: 'augmentationCapital')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'subventions', 'error')} ">
	<label for="subventions">
		<g:message code="planDeFinancement.subventions.label" default="Subventions" />
		
	</label>
	<g:field name="subventions" value="${fieldValue(bean: planDeFinancementInstance, field: 'subventions')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'emprunts', 'error')} ">
	<label for="emprunts">
		<g:message code="planDeFinancement.emprunts.label" default="Emprunts" />
		
	</label>
	<g:field name="emprunts" value="${fieldValue(bean: planDeFinancementInstance, field: 'emprunts')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'dividendesVerses', 'error')} ">
	<label for="dividendesVerses">
		<g:message code="planDeFinancement.dividendesVerses.label" default="Dividendes Verses" />
		
	</label>
	<g:field name="dividendesVerses" value="${fieldValue(bean: planDeFinancementInstance, field: 'dividendesVerses')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'investissements', 'error')} ">
	<label for="investissements">
		<g:message code="planDeFinancement.investissements.label" default="Investissements" />
		
	</label>
	<g:field name="investissements" value="${fieldValue(bean: planDeFinancementInstance, field: 'investissements')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'remboursementCapitalDesEmprunts', 'error')} ">
	<label for="remboursementCapitalDesEmprunts">
		<g:message code="planDeFinancement.remboursementCapitalDesEmprunts.label" default="Remboursement Capital Des Emprunts" />
		
	</label>
	<g:field name="remboursementCapitalDesEmprunts" value="${fieldValue(bean: planDeFinancementInstance, field: 'remboursementCapitalDesEmprunts')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'variationDuBFRE', 'error')} ">
	<label for="variationDuBFRE">
		<g:message code="planDeFinancement.variationDuBFRE.label" default="Variation Du BFRE" />
		
	</label>
	<g:field name="variationDuBFRE" value="${fieldValue(bean: planDeFinancementInstance, field: 'variationDuBFRE')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'annee', 'error')} required">
	<label for="annee">
		<g:message code="planDeFinancement.annee.label" default="Annee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="annee" value="${fieldValue(bean: planDeFinancementInstance, field: 'annee')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'mois', 'error')} required">
	<label for="mois">
		<g:message code="planDeFinancement.mois.label" default="Mois" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mois" value="${fieldValue(bean: planDeFinancementInstance, field: 'mois')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planDeFinancementInstance, field: 'simulation', 'error')} required">
	<label for="simulation">
		<g:message code="planDeFinancement.simulation.label" default="Simulation" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="simulation" name="simulation.id" from="${stratefi.simulateur.Simulation.list()}" optionKey="id" required="" value="${planDeFinancementInstance?.simulation?.id}" class="many-to-one"/>

</div>

