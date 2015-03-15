<%@ page import="entreprises.Reponse" %>



<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'acteur', 'error')} ">
	<label for="acteur">
		<g:message code="reponse.acteur.label" default="Acteur" />
		
	</label>
	<g:select id="acteur" name="acteur.id" from="${stratefi.comparateur.Acteur.list()}" optionKey="id" value="${reponseInstance?.acteur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'texte', 'error')} ">
	<label for="texte">
		<g:message code="reponse.texte.label" default="Texte" />
		
	</label>
	<g:textField name="texte" value="${reponseInstance?.texte}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'taux', 'error')} ">
	<label for="taux">
		<g:message code="reponse.taux.label" default="Taux" />
		
	</label>
	<g:field name="taux" value="${fieldValue(bean: reponseInstance, field: 'taux')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'montant', 'error')} ">
	<label for="montant">
		<g:message code="reponse.montant.label" default="Montant" />
		
	</label>
	<g:field name="montant" value="${fieldValue(bean: reponseInstance, field: 'montant')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'commission', 'error')} ">
	<label for="commission">
		<g:message code="reponse.commission.label" default="Commission" />
		
	</label>
	<g:field name="commission" value="${fieldValue(bean: reponseInstance, field: 'commission')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="reponse.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${reponseInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'demande', 'error')} required">
	<label for="demande">
		<g:message code="reponse.demande.label" default="Demande" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="demande" name="demande.id" from="${entreprises.Demande.list()}" optionKey="id" required="" value="${reponseInstance?.demande?.id}" class="many-to-one"/>

</div>

