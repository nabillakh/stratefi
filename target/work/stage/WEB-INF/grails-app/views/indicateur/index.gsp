
<%@ page import="referentiel.Indicateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'indicateur.label', default: 'Indicateur')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-indicateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-indicateur" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'indicateur.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'indicateur.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'indicateur.numero.label', default: 'Numero')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${indicateurInstanceList}" status="i" var="indicateurInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${indicateurInstance.id}">${fieldValue(bean: indicateurInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: indicateurInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: indicateurInstance, field: "numero")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${indicateurInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
