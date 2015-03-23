
<%@ page import="entreprises.BusinessModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'businessModel.label', default: 'BusinessModel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-businessModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-businessModel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="businessModel.croissanceCa.label" default="Croissance Ca" /></th>
					
						<th><g:message code="businessModel.volumeClient.label" default="Volume Client" /></th>
					
						<th><g:message code="businessModel.creanceClient.label" default="Creance Client" /></th>
					
						<th><g:message code="businessModel.marchandise.label" default="Marchandise" /></th>
					
						<th><g:message code="businessModel.entreprise.label" default="Entreprise" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${businessModelInstanceList}" status="i" var="businessModelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${businessModelInstance.id}">${fieldValue(bean: businessModelInstance, field: "croissanceCa")}</g:link></td>
					
						<td>${fieldValue(bean: businessModelInstance, field: "volumeClient")}</td>
					
						<td>${fieldValue(bean: businessModelInstance, field: "creanceClient")}</td>
					
						<td>${fieldValue(bean: businessModelInstance, field: "marchandise")}</td>
					
						<td>${fieldValue(bean: businessModelInstance, field: "entreprise")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${businessModelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
