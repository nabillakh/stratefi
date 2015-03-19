
<%@ page import="stratefi.comparateur.Formulaire" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formulaire.label', default: 'Formulaire')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formulaire" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formulaire" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nomProjet" title="${message(code: 'formulaire.nomProjet.label', default: 'Nom Projet')}" />
					
						<th><g:message code="formulaire.typeProjet.label" default="Type Projet" /></th>
					
						<g:sortableColumn property="montantRecherche" title="${message(code: 'formulaire.montantRecherche.label', default: 'Montant Recherche')}" />
					
						<th><g:message code="formulaire.dureeBesoin.label" default="Duree Besoin" /></th>
					
						<th><g:message code="formulaire.urgenceBesoin.label" default="Urgence Besoin" /></th>
					
						<g:sortableColumn property="nomEntreprise" title="${message(code: 'formulaire.nomEntreprise.label', default: 'Nom Entreprise')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formulaireInstanceList}" status="i" var="formulaireInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formulaireInstance.id}">${fieldValue(bean: formulaireInstance, field: "nomProjet")}</g:link></td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "typeProjet")}</td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "montantRecherche")}</td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "dureeBesoin")}</td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "urgenceBesoin")}</td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "nomEntreprise")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formulaireInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
