
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compte.label', default: 'Compte')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compte" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'compte.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'compte.password.label', default: 'Password')}" />
					
						<th><g:message code="compte.entreprise.label" default="Entreprise" /></th>
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'compte.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'compte.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'compte.enabled.label', default: 'Enabled')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compteInstanceList}" status="i" var="compteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compteInstance.id}">${fieldValue(bean: compteInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: compteInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: compteInstance, field: "entreprise")}</td>
					
						<td><g:formatBoolean boolean="${compteInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${compteInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${compteInstance.enabled}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${compteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
