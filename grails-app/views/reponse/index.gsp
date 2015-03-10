
<%@ page import="entreprises.Reponse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reponse.label', default: 'Reponse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reponse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reponse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="reponse.acteur.label" default="Acteur" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'reponse.date.label', default: 'Date')}" />
					
						<th><g:message code="reponse.demande.label" default="Demande" /></th>
					
						<g:sortableColumn property="texte" title="${message(code: 'reponse.texte.label', default: 'Texte')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reponseInstanceList}" status="i" var="reponseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reponseInstance.id}">${fieldValue(bean: reponseInstance, field: "acteur")}</g:link></td>
					
						<td><g:formatDate date="${reponseInstance.date}" /></td>
					
						<td>${fieldValue(bean: reponseInstance, field: "demande")}</td>
					
						<td>${fieldValue(bean: reponseInstance, field: "texte")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reponseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
