
<%@ page import="entreprises.Demande" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'demande.label', default: 'Demande')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-demande" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-demande" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'demande.nom.label', default: 'Nom')}" />
					
						<th><g:message code="demande.user.label" default="User" /></th>
					
						<th><g:message code="demande.entreprise.label" default="Entreprise" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'demande.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="urlSite" title="${message(code: 'demande.urlSite.label', default: 'Url Site')}" />
					
						<g:sortableColumn property="besoinMarche" title="${message(code: 'demande.besoinMarche.label', default: 'Besoin Marche')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${demandeInstanceList}" status="i" var="demandeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${demandeInstance.id}">${fieldValue(bean: demandeInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: demandeInstance, field: "user")}</td>
					
						<td>${fieldValue(bean: demandeInstance, field: "entreprise")}</td>
					
						<td>${fieldValue(bean: demandeInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: demandeInstance, field: "urlSite")}</td>
					
						<td>${fieldValue(bean: demandeInstance, field: "besoinMarche")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${demandeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
