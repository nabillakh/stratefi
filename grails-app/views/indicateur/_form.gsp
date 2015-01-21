<%@ page import="referentiel.Indicateur" %>



<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="indicateur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${indicateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="indicateur.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${indicateurInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="indicateur.numero.label" default="Numero" />
		
	</label>
	<g:field name="numero" value="${fieldValue(bean: indicateurInstance, field: 'numero')}"/>

</div>

