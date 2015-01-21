<%@ page import="stratefi.comparateur.TypeProduit" %>



<div class="fieldcontain ${hasErrors(bean: typeProduitInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="typeProduit.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${typeProduitInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: typeProduitInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="typeProduit.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" value="${fieldValue(bean: typeProduitInstance, field: 'numero')}" required=""/>

</div>

