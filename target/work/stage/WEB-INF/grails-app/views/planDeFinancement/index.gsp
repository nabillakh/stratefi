
<%@ page import="compte.PlanDeFinancement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planDeFinancement.label', default: 'PlanDeFinancement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-planDeFinancement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-planDeFinancement" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="capaciteDAutofinancement" title="${message(code: 'planDeFinancement.capaciteDAutofinancement.label', default: 'Capacite DA utofinancement')}" />
					
						<g:sortableColumn property="cessionDImmobilisations" title="${message(code: 'planDeFinancement.cessionDImmobilisations.label', default: 'Cession DI mmobilisations')}" />
					
						<g:sortableColumn property="augmentationCapital" title="${message(code: 'planDeFinancement.augmentationCapital.label', default: 'Augmentation Capital')}" />
					
						<g:sortableColumn property="subventions" title="${message(code: 'planDeFinancement.subventions.label', default: 'Subventions')}" />
					
						<g:sortableColumn property="emprunts" title="${message(code: 'planDeFinancement.emprunts.label', default: 'Emprunts')}" />
					
						<g:sortableColumn property="dividendesVerses" title="${message(code: 'planDeFinancement.dividendesVerses.label', default: 'Dividendes Verses')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planDeFinancementInstanceList}" status="i" var="planDeFinancementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planDeFinancementInstance.id}">${fieldValue(bean: planDeFinancementInstance, field: "capaciteDAutofinancement")}</g:link></td>
					
						<td>${fieldValue(bean: planDeFinancementInstance, field: "cessionDImmobilisations")}</td>
					
						<td>${fieldValue(bean: planDeFinancementInstance, field: "augmentationCapital")}</td>
					
						<td>${fieldValue(bean: planDeFinancementInstance, field: "subventions")}</td>
					
						<td>${fieldValue(bean: planDeFinancementInstance, field: "emprunts")}</td>
					
						<td>${fieldValue(bean: planDeFinancementInstance, field: "dividendesVerses")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planDeFinancementInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
