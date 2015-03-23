
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
					
						<g:sortableColumn property="titre" title="${message(code: 'formulaire.titre.label', default: 'Titre')}" />
					
						<g:sortableColumn property="keywords" title="${message(code: 'formulaire.keywords.label', default: 'Keywords')}" />
					
						<g:sortableColumn property="textePublie" title="${message(code: 'formulaire.textePublie.label', default: 'Texte Publie')}" />
					
						<g:sortableColumn property="publie" title="${message(code: 'formulaire.publie.label', default: 'Publie')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'formulaire.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'formulaire.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formulaireInstanceList}" status="i" var="formulaireInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formulaireInstance.id}">${fieldValue(bean: formulaireInstance, field: "titre")}</g:link></td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "keywords")}</td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "textePublie")}</td>
					
						<td><g:formatBoolean boolean="${formulaireInstance.publie}" /></td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: formulaireInstance, field: "description")}</td>
					
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
