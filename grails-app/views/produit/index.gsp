
<%@ page import="stratefi.comparateur.Produit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produit.label', default: 'Produit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-produit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-produit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'produit.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'produit.description.label', default: 'Description')}" />
					
						<th><g:message code="produit.typeProduit.label" default="Type Produit" /></th>
					
						<g:sortableColumn property="coutVarInvestisseur" title="${message(code: 'produit.coutVarInvestisseur.label', default: 'Cout Var Investisseur')}" />
					
						<g:sortableColumn property="coutVarEntreprise" title="${message(code: 'produit.coutVarEntreprise.label', default: 'Cout Var Entreprise')}" />
					
						<g:sortableColumn property="coutFixeDebut" title="${message(code: 'produit.coutFixeDebut.label', default: 'Cout Fixe Debut')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produitInstanceList}" status="i" var="produitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${produitInstance.id}">${fieldValue(bean: produitInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: produitInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: produitInstance, field: "typeProduit")}</td>
					
						<td>${fieldValue(bean: produitInstance, field: "coutVarInvestisseur")}</td>
					
						<td>${fieldValue(bean: produitInstance, field: "coutVarEntreprise")}</td>
					
						<td>${fieldValue(bean: produitInstance, field: "coutFixeDebut")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${produitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
