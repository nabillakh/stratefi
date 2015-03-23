<%@ page import="entreprises.BusinessModel" %>



<div class="fieldcontain ${hasErrors(bean: businessModelInstance, field: 'croissanceCa', 'error')} ">
	<label for="croissanceCa">
		<g:message code="businessModel.croissanceCa.label" default="Croissance Ca" />
		
	</label>
	<g:select id="croissanceCa" name="croissanceCa.id" from="${referentiel.CroissanceCa.list()}" optionKey="id" value="${businessModelInstance?.croissanceCa?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessModelInstance, field: 'volumeClient', 'error')} ">
	<label for="volumeClient">
		<g:message code="businessModel.volumeClient.label" default="Volume Client" />
		
	</label>
	<g:select id="volumeClient" name="volumeClient.id" from="${referentiel.VolumeClient.list()}" optionKey="id" value="${businessModelInstance?.volumeClient?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessModelInstance, field: 'creanceClient', 'error')} ">
	<label for="creanceClient">
		<g:message code="businessModel.creanceClient.label" default="Creance Client" />
		
	</label>
	<g:select id="creanceClient" name="creanceClient.id" from="${referentiel.CreanceClient.list()}" optionKey="id" value="${businessModelInstance?.creanceClient?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessModelInstance, field: 'marchandise', 'error')} ">
	<label for="marchandise">
		<g:message code="businessModel.marchandise.label" default="Marchandise" />
		
	</label>
	<g:select id="marchandise" name="marchandise.id" from="${referentiel.Marchandise.list()}" optionKey="id" value="${businessModelInstance?.marchandise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessModelInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="businessModel.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${businessModelInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

