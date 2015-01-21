<%@ page import="planification.Pdp" %>



<div class="fieldcontain ${hasErrors(bean: pdpInstance, field: 'mouvement', 'error')} ">
	<label for="mouvement">
		<g:message code="pdp.mouvement.label" default="Mouvement" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pdpInstance?.mouvement?}" var="m">
    <li><g:link controller="mouvement" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mouvement" action="create" params="['pdp.id': pdpInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mouvement.label', default: 'Mouvement')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pdpInstance, field: 'mois', 'error')} required">
	<label for="mois">
		<g:message code="pdp.mois.label" default="Mois" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mois" type="number" value="${pdpInstance.mois}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pdpInstance, field: 'pic', 'error')} required">
	<label for="pic">
		<g:message code="pdp.pic.label" default="Pic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pic" name="pic.id" from="${planification.Pic.list()}" optionKey="id" required="" value="${pdpInstance?.pic?.id}" class="many-to-one"/>

</div>

