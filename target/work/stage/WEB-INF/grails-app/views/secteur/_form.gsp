<%@ page import="stratefi.comparateur.Secteur" %>



<div class="fieldcontain ${hasErrors(bean: secteurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="secteur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${secteurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secteurInstance, field: 'nomSEO', 'error')} ">
	<label for="nomSEO">
		<g:message code="secteur.nomSEO.label" default="Nom SEO" />
		
	</label>
	<g:textField name="nomSEO" value="${secteurInstance?.nomSEO}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secteurInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="secteur.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" value="${secteurInstance?.numero}"/>

</div>

