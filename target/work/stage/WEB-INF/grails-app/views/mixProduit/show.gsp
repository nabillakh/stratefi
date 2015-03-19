
<%@ page import="stratefi.comparateur.MixProduit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mixProduit.label', default: 'MixProduit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mixProduit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mixProduit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mixProduit">
			
				<g:if test="${mixProduitInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="mixProduit.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${mixProduitInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mixProduitInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="mixProduit.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${mixProduitInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mixProduitInstance?.niche}">
				<li class="fieldcontain">
					<span id="niche-label" class="property-label"><g:message code="mixProduit.niche.label" default="Niche" /></span>
					
						<span class="property-value" aria-labelledby="niche-label"><g:link controller="niche" action="show" id="${mixProduitInstance?.niche?.id}">${mixProduitInstance?.niche?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mixProduitInstance?.produit}">
				<li class="fieldcontain">
					<span id="produit-label" class="property-label"><g:message code="mixProduit.produit.label" default="Produit" /></span>
					
						<span class="property-value" aria-labelledby="produit-label"><g:link controller="produit" action="show" id="${mixProduitInstance?.produit?.id}">${mixProduitInstance?.produit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mixProduitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mixProduitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
