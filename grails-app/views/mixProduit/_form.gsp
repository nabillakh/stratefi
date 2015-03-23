<%@ page import="stratefi.comparateur.MixProduit" %>



<div class="fieldcontain ${hasErrors(bean: mixProduitInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="mixProduit.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${mixProduitInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mixProduitInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="mixProduit.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${mixProduitInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mixProduitInstance, field: 'formulaire', 'error')} required">
	<label for="formulaire">
		<g:message code="mixProduit.formulaire.label" default="Formulaire" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="formulaire" name="formulaire.id" from="${stratefi.comparateur.Formulaire.list()}" optionKey="id" required="" value="${mixProduitInstance?.formulaire?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mixProduitInstance, field: 'produit', 'error')} required">
	<label for="produit">
		<g:message code="mixProduit.produit.label" default="Produit" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produit" name="produit.id" from="${stratefi.comparateur.Produit.list()}" optionKey="id" required="" value="${mixProduitInstance?.produit?.id}" class="many-to-one"/>

</div>

