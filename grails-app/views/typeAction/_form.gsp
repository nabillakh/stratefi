<%@ page import="referentiel.TypeAction" %>



<div class="fieldcontain ${hasErrors(bean: typeActionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="typeAction.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${typeActionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: typeActionInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="typeAction.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${typeActionInstance?.nom}"/>

</div>

