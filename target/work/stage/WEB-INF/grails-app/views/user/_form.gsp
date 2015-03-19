<%@ page import="connection.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'entreprise', 'error')} ">
	<label for="entreprise">
		<g:message code="user.entreprise.label" default="Entreprise" />
		
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${userInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="user.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${userInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'prenom', 'error')} ">
	<label for="prenom">
		<g:message code="user.prenom.label" default="Prenom" />
		
	</label>
	<g:textField name="prenom" value="${userInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="user.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" value="${userInstance?.telephone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>

