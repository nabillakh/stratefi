
<%@ page import="stratefi.simulateur.Simulation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'simulation.label', default: 'Simulation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-simulation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-simulation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'simulation.nom.label', default: 'Nom')}" />
					
						<th><g:message code="simulation.produit.label" default="Produit" /></th>
					
						<g:sortableColumn property="coutVarInvestisseur" title="${message(code: 'simulation.coutVarInvestisseur.label', default: 'Cout Var Investisseur')}" />
					
						<g:sortableColumn property="coutVarEntreprise" title="${message(code: 'simulation.coutVarEntreprise.label', default: 'Cout Var Entreprise')}" />
					
						<g:sortableColumn property="coutFixeDebut" title="${message(code: 'simulation.coutFixeDebut.label', default: 'Cout Fixe Debut')}" />
					
						<g:sortableColumn property="coutFixeFin" title="${message(code: 'simulation.coutFixeFin.label', default: 'Cout Fixe Fin')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${simulationInstanceList}" status="i" var="simulationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${simulationInstance.id}">${fieldValue(bean: simulationInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: simulationInstance, field: "produit")}</td>
					
						<td>${fieldValue(bean: simulationInstance, field: "coutVarInvestisseur")}</td>
					
						<td>${fieldValue(bean: simulationInstance, field: "coutVarEntreprise")}</td>
					
						<td>${fieldValue(bean: simulationInstance, field: "coutFixeDebut")}</td>
					
						<td>${fieldValue(bean: simulationInstance, field: "coutFixeFin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${simulationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
