

<div class="fieldcontain ${hasErrors(bean: empruntInstance, field: 'tauxAssurance', 'error')} ">
	<label for="tauxAssurance">
		<g:message code="emprunt.tauxAssurance.label" default="Taux Assurance" />
		
	</label>
	<g:field name="tauxAssurance" value="${fieldValue(bean: empruntInstance, field: 'tauxAssurance')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empruntInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="emprunt.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${empruntInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empruntInstance, field: 'montant', 'error')} required">
	<label for="montant">
		<g:message code="emprunt.montant.label" default="Montant" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="montant" value="${fieldValue(bean: empruntInstance, field: 'montant')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: empruntInstance, field: 'nbMensualite', 'error')} required">
	<label for="nbMensualite">
		<g:message code="emprunt.nbMensualite.label" default="Nb Mensualite" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nbMensualite" value="${fieldValue(bean: empruntInstance, field: 'nbMensualite')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: empruntInstance, field: 'tauxInteret', 'error')} required">
	<label for="tauxInteret">
		<g:message code="emprunt.tauxInteret.label" default="Taux Interet" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tauxInteret" value="${fieldValue(bean: empruntInstance, field: 'tauxInteret')}" required=""/>

</div>

