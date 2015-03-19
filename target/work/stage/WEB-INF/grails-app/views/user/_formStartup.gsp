

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'mesLiasses', 'error')} ">
	<label for="mesLiasses">
		<g:message code="entreprise.mesLiasses.label" default="Mes Liasses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrepriseInstance?.mesLiasses?}" var="m">
    <li><g:link controller="liasse" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="liasse" action="create" params="['entreprise.id': entrepriseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'liasse.label', default: 'Liasse')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'siren', 'error')} ">
	<label for="siren">
		<g:message code="entreprise.siren.label" default="Siren" />
		
	</label>
	<g:textField name="siren" value="${entrepriseInstance?.siren}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="entreprise.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${entrepriseInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'pic', 'error')} ">
	<label for="pic">
		<g:message code="entreprise.pic.label" default="Pic" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrepriseInstance?.pic?}" var="p">
    <li><g:link controller="PIC" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="PIC" action="create" params="['entreprise.id': entrepriseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'PIC.label', default: 'PIC')])}</g:link>
</li>
</ul>


</div>

