
<%@ page import="planification.Pdp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pdp.label', default: 'Pdp')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pdp" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pdp" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pdp">
			
				<g:if test="${pdpInstance?.mouvement}">
				<li class="fieldcontain">
					<span id="mouvement-label" class="property-label"><g:message code="pdp.mouvement.label" default="Mouvement" /></span>
					
						<g:each in="${pdpInstance.mouvement}" var="m">
						<span class="property-value" aria-labelledby="mouvement-label"><g:link controller="mouvement" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pdpInstance?.mois}">
				<li class="fieldcontain">
					<span id="mois-label" class="property-label"><g:message code="pdp.mois.label" default="Mois" /></span>
					
						<span class="property-value" aria-labelledby="mois-label"><g:fieldValue bean="${pdpInstance}" field="mois"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pdpInstance?.pic}">
				<li class="fieldcontain">
					<span id="pic-label" class="property-label"><g:message code="pdp.pic.label" default="Pic" /></span>
					
						<span class="property-value" aria-labelledby="pic-label"><g:link controller="pic" action="show" id="${pdpInstance?.pic?.id}">${pdpInstance?.pic?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pdpInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pdpInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
