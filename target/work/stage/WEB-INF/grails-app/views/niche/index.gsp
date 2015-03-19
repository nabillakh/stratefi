
<%@ page import="stratefi.comparateur.Niche" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'niche.label', default: 'Niche')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-niche" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-niche" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titre" title="${message(code: 'niche.titre.label', default: 'Titre')}" />
					
						<g:sortableColumn property="keywords" title="${message(code: 'niche.keywords.label', default: 'Keywords')}" />
					
						<g:sortableColumn property="textePublie" title="${message(code: 'niche.textePublie.label', default: 'Texte Publie')}" />
					
						<g:sortableColumn property="publie" title="${message(code: 'niche.publie.label', default: 'Publie')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'niche.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'niche.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${nicheInstanceList}" status="i" var="nicheInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${nicheInstance.id}">${fieldValue(bean: nicheInstance, field: "titre")}</g:link></td>
					
						<td>${fieldValue(bean: nicheInstance, field: "keywords")}</td>
					
						<td>${fieldValue(bean: nicheInstance, field: "textePublie")}</td>
					
						<td><g:formatBoolean boolean="${nicheInstance.publie}" /></td>
					
						<td>${fieldValue(bean: nicheInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: nicheInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${nicheInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
