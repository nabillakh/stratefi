<%@ page import="entreprises.AnalyseFinanciere" %>



<div class="fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="analyseFinanciere.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${analyseFinanciereInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="analyseFinanciere.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${connection.User.list()}" optionKey="id" value="${analyseFinanciereInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="analyseFinanciere.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${analyseFinanciereInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="analyseFinanciere.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${analyseFinanciereInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="analyseFinanciere.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${analyseFinanciereInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'siren', 'error')} ">
	<label for="siren">
		<g:message code="analyseFinanciere.siren.label" default="Siren" />
		
	</label>
	<g:textField name="siren" value="${analyseFinanciereInstance?.siren}"/>

</div>

