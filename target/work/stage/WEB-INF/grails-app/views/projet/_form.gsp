<%@ page import="planification.Projet" %>



<div class="fieldcontain ${hasErrors(bean: projetInstance, field: 'actions', 'error')} ">
	<label for="actions">
		<g:message code="projet.actions.label" default="Actions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projetInstance?.actions?}" var="a">
    <li><g:link controller="action" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="action" action="create" params="['projet.id': projetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'action.label', default: 'Action')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projetInstance, field: 'objectif', 'error')} ">
	<label for="objectif">
		<g:message code="projet.objectif.label" default="Objectif" />
		
	</label>
	<g:select id="objectif" name="objectif.id" from="${referentiel.Objectif.list()}" optionKey="id" value="${projetInstance?.objectif?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="projet.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projetInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="projet.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${projetInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="projet.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${projetInstance?.nom}"/>

</div>

