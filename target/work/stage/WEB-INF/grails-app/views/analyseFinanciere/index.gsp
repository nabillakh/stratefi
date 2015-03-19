
<%@ page import="entreprises.AnalyseFinanciere" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'analyseFinanciere.label', default: 'AnalyseFinanciere')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-analyseFinanciere" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-analyseFinanciere" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="analyseFinanciere.entreprise.label" default="Entreprise" /></th>
					
						<th><g:message code="analyseFinanciere.user.label" default="User" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'analyseFinanciere.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'analyseFinanciere.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'analyseFinanciere.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="siren" title="${message(code: 'analyseFinanciere.siren.label', default: 'Siren')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${analyseFinanciereInstanceList}" status="i" var="analyseFinanciereInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${analyseFinanciereInstance.id}">${fieldValue(bean: analyseFinanciereInstance, field: "entreprise")}</g:link></td>
					
						<td>${fieldValue(bean: analyseFinanciereInstance, field: "user")}</td>
					
						<td><g:formatDate date="${analyseFinanciereInstance.date}" /></td>
					
						<td>${fieldValue(bean: analyseFinanciereInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: analyseFinanciereInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: analyseFinanciereInstance, field: "siren")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${analyseFinanciereInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
