<%@ page import="entreprises.Demande" %>



<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'reponses', 'error')} ">
	<label for="reponses">
		<g:message code="demande.reponses.label" default="Reponses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${demandeInstance?.reponses?}" var="r">
    <li><g:link controller="reponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="reponse" action="create" params="['demande.id': demandeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'reponse.label', default: 'Reponse')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'typeProjet', 'error')} ">
	<label for="typeProjet">
		<g:message code="demande.typeProjet.label" default="Type Projet" />
		
	</label>
	<g:select id="typeProjet" name="typeProjet.id" from="${stratefi.comparateur.TypeProjet.list()}" optionKey="id" value="${demandeInstance?.typeProjet?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="demande.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${demandeInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="demande.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${connection.User.list()}" optionKey="id" value="${demandeInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="demande.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${demandeInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="demande.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${demandeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'urlSite', 'error')} ">
	<label for="urlSite">
		<g:message code="demande.urlSite.label" default="Url Site" />
		
	</label>
	<g:textField name="urlSite" value="${demandeInstance?.urlSite}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'besoinMarche', 'error')} ">
	<label for="besoinMarche">
		<g:message code="demande.besoinMarche.label" default="Besoin Marche" />
		
	</label>
	<g:textField name="besoinMarche" value="${demandeInstance?.besoinMarche}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="demande.type.label" default="Type" />
		
	</label>
	<g:select id="type" name="type.id" from="${stratefi.comparateur.TypeProduit.list()}" optionKey="id" value="${demandeInstance?.type?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'disruption', 'error')} ">
	<label for="disruption">
		<g:message code="demande.disruption.label" default="Disruption" />
		
	</label>
	<g:textField name="disruption" value="${demandeInstance?.disruption}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'montantRecherche', 'error')} ">
	<label for="montantRecherche">
		<g:message code="demande.montantRecherche.label" default="Montant Recherche" />
		
	</label>
	<g:field name="montantRecherche" value="${fieldValue(bean: demandeInstance, field: 'montantRecherche')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'tresorerieActuelle', 'error')} ">
	<label for="tresorerieActuelle">
		<g:message code="demande.tresorerieActuelle.label" default="Tresorerie Actuelle" />
		
	</label>
	<g:field name="tresorerieActuelle" value="${fieldValue(bean: demandeInstance, field: 'tresorerieActuelle')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'chargesMensuellesActuelles', 'error')} ">
	<label for="chargesMensuellesActuelles">
		<g:message code="demande.chargesMensuellesActuelles.label" default="Charges Mensuelles Actuelles" />
		
	</label>
	<g:field name="chargesMensuellesActuelles" value="${fieldValue(bean: demandeInstance, field: 'chargesMensuellesActuelles')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'etat', 'error')} ">
	<label for="etat">
		<g:message code="demande.etat.label" default="Etat" />
		
	</label>
	<g:select id="etat" name="etat.id" from="${entreprises.Etat.list()}" optionKey="id" value="${demandeInstance?.etat?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="demande.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${demandeInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'publie', 'error')} ">
	<label for="publie">
		<g:message code="demande.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${demandeInstance?.publie}" />

</div>

