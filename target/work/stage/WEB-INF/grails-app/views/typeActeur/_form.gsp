<%@ page import="stratefi.comparateur.TypeActeur" %>



<div class="fieldcontain ${hasErrors(bean: typeActeurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="typeActeur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${typeActeurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: typeActeurInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="typeActeur.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" value="${fieldValue(bean: typeActeurInstance, field: 'numero')}" required=""/>

</div>

