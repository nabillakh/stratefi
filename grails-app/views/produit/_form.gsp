<%@ page import="stratefi.comparateur.Produit" %>



<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="produit.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${produitInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="produit.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${produitInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'typeProduit', 'error')} ">
	<label for="typeProduit">
		<g:message code="produit.typeProduit.label" default="Type Produit" />
		
	</label>
	<g:select id="typeProduit" name="typeProduit.id" from="${stratefi.comparateur.TypeProduit.list()}" optionKey="id" value="${produitInstance?.typeProduit?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'coutVarInvestisseurMin', 'error')} ">
	<label for="coutVarInvestisseurMin">
		<g:message code="produit.coutVarInvestisseurMin.label" default="Cout Var Investisseur" />
		
	</label>
	<g:field name="coutVarInvestisseurMin" value="${fieldValue(bean: produitInstance, field: 'coutVarInvestisseurMin')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'coutVarEntrepriseMin', 'error')} ">
	<label for="coutVarEntrepriseMin">
		<g:message code="produit.coutVarEntrepriseMin.label" default="Cout Var Entreprise" />
		
	</label>
	<g:field name="coutVarEntrepriseMin" value="${fieldValue(bean: produitInstance, field: 'coutVarEntrepriseMin')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'coutFixeDebut', 'error')} ">
	<label for="coutFixeDebut">
		<g:message code="produit.coutFixeDebut.label" default="Cout Fixe Debut" />
		
	</label>
	<g:field name="coutFixeDebut" value="${fieldValue(bean: produitInstance, field: 'coutFixeDebut')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'coutFixeFin', 'error')} ">
	<label for="coutFixeFin">
		<g:message code="produit.coutFixeFin.label" default="Cout Fixe Fin" />
		
	</label>
	<g:field name="coutFixeFin" value="${fieldValue(bean: produitInstance, field: 'coutFixeFin')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'montantMinimum', 'error')} ">
	<label for="montantMinimum">
		<g:message code="produit.montantMinimum.label" default="Montant Minimum" />
		
	</label>
	<g:field name="montantMinimum" value="${fieldValue(bean: produitInstance, field: 'montantMinimum')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'montantMaximum', 'error')} ">
	<label for="montantMaximum">
		<g:message code="produit.montantMaximum.label" default="Montant Maximum" />
		
	</label>
	<g:field name="montantMaximum" value="${fieldValue(bean: produitInstance, field: 'montantMaximum')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'typeProjet', 'error')} ">
	<label for="typeProjet">
		<g:message code="produit.typeProjet.label" default="Type Projet" />
		
	</label>
	<g:select name="typeProjet" from="${stratefi.comparateur.TypeProjet.list()}" multiple="multiple" optionKey="id" size="5" value="${produitInstance?.typeProjet*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'acteur', 'error')} required">
	<label for="acteur">
		<g:message code="produit.acteur.label" default="Acteur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="acteur" name="acteur.id" from="${stratefi.comparateur.Acteur.list()}" optionKey="id" required="" value="${produitInstance?.acteur?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'recurrentMin', 'error')} required">
	<label for="recurrentMin">
		<g:message code="produit.recurrentMin.label" default="Recurrent" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="recurrentMin" value="${fieldValue(bean: produitInstance, field: 'recurrentMin')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'secteurs', 'error')} ">
	<label for="secteurs">
		<g:message code="produit.secteurs.label" default="Secteurs" />
		
	</label>
	<g:select name="secteurs" from="${stratefi.comparateur.Secteur.list()}" multiple="multiple" optionKey="id" size="5" value="${produitInstance?.secteurs*.id}" class="many-to-many"/>

</div>

