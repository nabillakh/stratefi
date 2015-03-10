<%@ page import="entreprises.Reponse" %>



<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'acteur', 'error')} required">
	<label for="acteur">
		<g:message code="reponse.acteur.label" default="Acteur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="acteur" name="acteur.id" from="${stratefi.comparateur.Acteur.list()}" optionKey="id" required="" value="${reponseInstance?.acteur?.id}" class="many-to-one"/>

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

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'texte', 'error')} ">
	<label for="texte">
		<g:message code="reponse.texte.label" default="Texte" />
		
	</label>
	<g:textField name="texte" value="${reponseInstance?.texte}"/>

</div>

