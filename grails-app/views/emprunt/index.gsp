<%@ page import="stratefi.outil.Emprunt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emprunt.label', default: 'Emprunt')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-emprunt" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-emprunt" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tauxAssurance" title="${message(code: 'emprunt.tauxAssurance.label', default: 'Taux Assurance')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'emprunt.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="montant" title="${message(code: 'emprunt.montant.label', default: 'Montant')}" />
					
						<g:sortableColumn property="nbMensualite" title="${message(code: 'emprunt.nbMensualite.label', default: 'Nb Mensualite')}" />
					
						<g:sortableColumn property="tauxInteret" title="${message(code: 'emprunt.tauxInteret.label', default: 'Taux Interet')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empruntInstanceList}" status="i" var="empruntInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empruntInstance.id}">${fieldValue(bean: empruntInstance, field: "tauxAssurance")}</g:link></td>
					
						<td>${fieldValue(bean: empruntInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: empruntInstance, field: "montant")}</td>
					
						<td>${fieldValue(bean: empruntInstance, field: "nbMensualite")}</td>
					
						<td>${fieldValue(bean: empruntInstance, field: "tauxInteret")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empruntInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
