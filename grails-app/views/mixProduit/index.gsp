
<%@ page import="stratefi.comparateur.MixProduit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mixProduit.label', default: 'MixProduit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mixProduit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mixProduit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'mixProduit.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'mixProduit.description.label', default: 'Description')}" />
					
						<th><g:message code="mixProduit.niche.label" default="Niche" /></th>
					
						<th><g:message code="mixProduit.produit.label" default="Produit" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mixProduitInstanceList}" status="i" var="mixProduitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mixProduitInstance.id}">${fieldValue(bean: mixProduitInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: mixProduitInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: mixProduitInstance, field: "niche")}</td>
					
						<td>${fieldValue(bean: mixProduitInstance, field: "produit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mixProduitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>