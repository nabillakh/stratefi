
<%@ page import="stratefi.comparateur.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-image" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="filePayload" title="${message(code: 'image.filePayload.label', default: 'File Payload')}" />
					
						<g:sortableColumn property="fileType" title="${message(code: 'image.fileType.label', default: 'File Type')}" />
					
						<g:sortableColumn property="fileName" title="${message(code: 'image.fileName.label', default: 'File Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imageInstanceList}" status="i" var="imageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imageInstance.id}">${fieldValue(bean: imageInstance, field: "filePayload")}</g:link></td>
					
						<td>${fieldValue(bean: imageInstance, field: "fileType")}</td>
					
						<td>${fieldValue(bean: imageInstance, field: "fileName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
