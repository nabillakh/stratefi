
<%@ page import="planification.Ligne" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ligne.label', default: 'Ligne')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ligne" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ligne" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="valeur" title="${message(code: 'ligne.valeur.label', default: 'Valeur')}" />
					
						<th><g:message code="ligne.entreprise.label" default="Entreprise" /></th>
					
						<th><g:message code="ligne.action.label" default="Action" /></th>
					
						<th><g:message code="ligne.indicateur.label" default="Indicateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ligneInstanceList}" status="i" var="ligneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ligneInstance.id}">${fieldValue(bean: ligneInstance, field: "valeur")}</g:link></td>
					
						<td>${fieldValue(bean: ligneInstance, field: "entreprise")}</td>
					
						<td>${fieldValue(bean: ligneInstance, field: "action")}</td>
					
						<td>${fieldValue(bean: ligneInstance, field: "indicateur")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ligneInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
