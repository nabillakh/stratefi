<%@ page import="planification.Ligne" %>



<div class="fieldcontain ${hasErrors(bean: ligneInstance, field: 'valeur', 'error')} required">
	<label for="valeur">
		<g:message code="ligne.valeur.label" default="Valeur" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valeur" value="${fieldValue(bean: ligneInstance, field: 'valeur')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ligneInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="ligne.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${ligneInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ligneInstance, field: 'mouvement', 'error')} ">
	<label for="mouvement">
		<g:message code="ligne.mouvement.label" default="Mouvement" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ligneInstance?.mouvement?}" var="m">
    <li><g:link controller="mouvement" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mouvement" action="create" params="['ligne.id': ligneInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mouvement.label', default: 'Mouvement')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: ligneInstance, field: 'action', 'error')} ">
	<label for="action">
		<g:message code="ligne.action.label" default="Action" />
		
	</label>
	<g:select id="action" name="action.id" from="${planification.Action.list()}" optionKey="id" value="${ligneInstance?.action?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ligneInstance, field: 'indicateur', 'error')} ">
	<label for="indicateur">
		<g:message code="ligne.indicateur.label" default="Indicateur" />
		
	</label>
	<g:select id="indicateur" name="indicateur.id" from="${referentiel.Indicateur.list()}" optionKey="id" value="${ligneInstance?.indicateur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

