<%@ page import="stratefi.simulateur.Simulation" %>



<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="simulation.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${simulationInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'typeProduit', 'error')} ">
	<label for="typeProduit">
		<g:message code="simulation.typeProduit.label" default="Type Produit" />
		
	</label>
	<g:select id="typeProduit" name="typeProduit.id" from="${stratefi.comparateur.TypeProduit.list()}" optionKey="id" value="${simulationInstance?.typeProduit?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: simulationInstance, field: 'planDeFinancement', 'error')} ">
	<label for="planDeFinancement">
		<g:message code="simulation.planDeFinancement.label" default="Plan De Financement" />
		
	</label>
	<g:select id="planDeFinancement" name="planDeFinancement.id" from="${compte.PlanDeFinancement.list()}" optionKey="id" value="${simulationInstance?.planDeFinancement?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

