
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compte.label', default: 'Compte')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-compte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-compte" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list compte">
			
				<g:if test="${compteInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="compte.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${compteInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compteInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="compte.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${compteInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compteInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="compte.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${compteInstance?.entreprise?.id}">${compteInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${compteInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="compte.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${compteInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compteInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="compte.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${compteInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compteInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="compte.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${compteInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compteInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="compte.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${compteInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:compteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${compteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
