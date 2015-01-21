
<%@ page import="stratefi.comparateur.Secteur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'secteur.label', default: 'Secteur')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-secteur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-secteur" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'secteur.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="nomSEO" title="${message(code: 'secteur.nomSEO.label', default: 'Nom SEO')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'secteur.numero.label', default: 'Numero')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${secteurInstanceList}" status="i" var="secteurInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${secteurInstance.id}">${fieldValue(bean: secteurInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: secteurInstance, field: "nomSEO")}</td>
					
						<td>${fieldValue(bean: secteurInstance, field: "numero")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${secteurInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
