<%@ page import="entreprises.Entreprise" %>



<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'demandes', 'error')} ">
	<label for="demandes">
		<g:message code="entreprise.demandes.label" default="Demandes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrepriseInstance?.demandes?}" var="d">
    <li><g:link controller="demande" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="demande" action="create" params="['entreprise.id': entrepriseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'demande.label', default: 'Demande')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'secteur', 'error')} ">
	<label for="secteur">
		<g:message code="entreprise.secteur.label" default="Secteur" />
		
	</label>
	<g:select id="secteur" name="secteur.id" from="${stratefi.comparateur.Secteur.list()}" optionKey="id" value="${entrepriseInstance?.secteur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'descriptionActivite', 'error')} ">
	<label for="descriptionActivite">
		<g:message code="entreprise.descriptionActivite.label" default="Description Activite" />
		
	</label>
	<g:textField name="descriptionActivite" value="${entrepriseInstance?.descriptionActivite}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'siren', 'error')} ">
	<label for="siren">
		<g:message code="entreprise.siren.label" default="Siren" />
		
	</label>
	<g:textField name="siren" value="${entrepriseInstance?.siren}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'adresse', 'error')} ">
	<label for="adresse">
		<g:message code="entreprise.adresse.label" default="Adresse" />
		
	</label>
	<g:textField name="adresse" value="${entrepriseInstance?.adresse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'codePostal', 'error')} ">
	<label for="codePostal">
		<g:message code="entreprise.codePostal.label" default="Code Postal" />
		
	</label>
	<g:textField name="codePostal" value="${entrepriseInstance?.codePostal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'ville', 'error')} ">
	<label for="ville">
		<g:message code="entreprise.ville.label" default="Ville" />
		
	</label>
	<g:textField name="ville" value="${entrepriseInstance?.ville}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'pays', 'error')} ">
	<label for="pays">
		<g:message code="entreprise.pays.label" default="Pays" />
		
	</label>
	<g:textField name="pays" value="${entrepriseInstance?.pays}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="entreprise.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${entrepriseInstance?.nom}"/>

</div>

