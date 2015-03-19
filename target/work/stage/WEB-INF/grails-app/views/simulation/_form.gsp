<%@ page import="stratefi.simulateur.Simulation" %>



<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="simulation.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${simulationInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'produit', 'error')} ">
	<label for="produit">
		<g:message code="simulation.produit.label" default="Produit" />
		
	</label>
	<g:select id="produit" name="produit.id" from="${stratefi.comparateur.Produit.list()}" optionKey="id" value="${simulationInstance?.produit?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'planDeFinancement', 'error')} ">
	<label for="planDeFinancement">
		<g:message code="simulation.planDeFinancement.label" default="Plan De Financement" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${simulationInstance?.planDeFinancement?}" var="p">
    <li><g:link controller="planDeFinancement" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="planDeFinancement" action="create" params="['simulation.id': simulationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'planDeFinancement.label', default: 'PlanDeFinancement')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'coutVarInvestisseur', 'error')} ">
	<label for="coutVarInvestisseur">
		<g:message code="simulation.coutVarInvestisseur.label" default="Cout Var Investisseur" />
		
	</label>
	<g:field name="coutVarInvestisseur" value="${fieldValue(bean: simulationInstance, field: 'coutVarInvestisseur')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'coutVarEntreprise', 'error')} ">
	<label for="coutVarEntreprise">
		<g:message code="simulation.coutVarEntreprise.label" default="Cout Var Entreprise" />
		
	</label>
	<g:field name="coutVarEntreprise" value="${fieldValue(bean: simulationInstance, field: 'coutVarEntreprise')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'coutFixeDebut', 'error')} ">
	<label for="coutFixeDebut">
		<g:message code="simulation.coutFixeDebut.label" default="Cout Fixe Debut" />
		
	</label>
	<g:field name="coutFixeDebut" value="${fieldValue(bean: simulationInstance, field: 'coutFixeDebut')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'coutFixeFin', 'error')} ">
	<label for="coutFixeFin">
		<g:message code="simulation.coutFixeFin.label" default="Cout Fixe Fin" />
		
	</label>
	<g:field name="coutFixeFin" value="${fieldValue(bean: simulationInstance, field: 'coutFixeFin')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'montant', 'error')} ">
	<label for="montant">
		<g:message code="simulation.montant.label" default="Montant" />
		
	</label>
	<g:field name="montant" value="${fieldValue(bean: simulationInstance, field: 'montant')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'temps', 'error')} ">
	<label for="temps">
		<g:message code="simulation.temps.label" default="Temps" />
		
	</label>
	<g:field name="temps" value="${fieldValue(bean: simulationInstance, field: 'temps')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'recurrent', 'error')} ">
	<label for="recurrent">
		<g:message code="simulation.recurrent.label" default="Recurrent" />
		
	</label>
	<g:field name="recurrent" value="${fieldValue(bean: simulationInstance, field: 'recurrent')}"/>

</div>

