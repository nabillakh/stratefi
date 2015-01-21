<%@ page import="planification.Action" %>



<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="action.type.label" default="Type" />
		
	</label>
	<g:select id="type" name="type.id" from="${referentiel.TypeAction.list()}" optionKey="id" value="${actionInstance?.type?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="action.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${actionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="action.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${actionInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'projet', 'error')} required">
	<label for="projet">
		<g:message code="action.projet.label" default="Projet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projet" name="projet.id" from="${planification.Projet.list()}" optionKey="id" required="" value="${actionInstance?.projet?.id}" class="many-to-one"/>

</div>

