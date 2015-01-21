

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="compte.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${compteInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="compte.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${compteInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="compte.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${businessplan.entreprises.Entreprise.list()}" optionKey="id" value="${compteInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="compte.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${compteInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="compte.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${compteInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="compte.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${compteInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: compteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="compte.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${compteInstance?.passwordExpired}" />

</div>

