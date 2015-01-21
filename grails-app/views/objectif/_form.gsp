<%@ page import="referentiel.Objectif" %>



<div class="fieldcontain ${hasErrors(bean: objectifInstance, field: 'listeActions', 'error')} ">
	<label for="listeActions">
		<g:message code="objectif.listeActions.label" default="Liste Actions" />
		
	</label>
	<g:select name="listeActions" from="${referentiel.TypeAction.list()}" multiple="multiple" optionKey="id" size="5" value="${objectifInstance?.listeActions*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objectifInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="objectif.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${objectifInstance?.nom}"/>

</div>

