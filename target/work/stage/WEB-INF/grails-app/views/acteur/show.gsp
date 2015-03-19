
<%@ page import="stratefi.comparateur.Acteur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'acteur.label', default: 'Acteur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-acteur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-acteur" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list acteur">
			
				<g:if test="${acteurInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="acteur.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${acteurInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="acteur.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${acteurInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="acteur.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${acteurInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="acteur.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${acteurInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.typeActeur}">
				<li class="fieldcontain">
					<span id="typeActeur-label" class="property-label"><g:message code="acteur.typeActeur.label" default="Type Acteur" /></span>
					
						<span class="property-value" aria-labelledby="typeActeur-label"><g:link controller="typeActeur" action="show" id="${acteurInstance?.typeActeur?.id}">${acteurInstance?.typeActeur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.produits}">
				<li class="fieldcontain">
					<span id="produits-label" class="property-label"><g:message code="acteur.produits.label" default="Produits" /></span>
					
						<g:each in="${acteurInstance.produits}" var="p">
						<span class="property-value" aria-labelledby="produits-label"><g:link controller="produit" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.facebook}">
				<li class="fieldcontain">
					<span id="facebook-label" class="property-label"><g:message code="acteur.facebook.label" default="Facebook" /></span>
					
						<span class="property-value" aria-labelledby="facebook-label"><g:fieldValue bean="${acteurInstance}" field="facebook"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.googleplus}">
				<li class="fieldcontain">
					<span id="googleplus-label" class="property-label"><g:message code="acteur.googleplus.label" default="Googleplus" /></span>
					
						<span class="property-value" aria-labelledby="googleplus-label"><g:fieldValue bean="${acteurInstance}" field="googleplus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.linkedin}">
				<li class="fieldcontain">
					<span id="linkedin-label" class="property-label"><g:message code="acteur.linkedin.label" default="Linkedin" /></span>
					
						<span class="property-value" aria-labelledby="linkedin-label"><g:fieldValue bean="${acteurInstance}" field="linkedin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.twitter}">
				<li class="fieldcontain">
					<span id="twitter-label" class="property-label"><g:message code="acteur.twitter.label" default="Twitter" /></span>
					
						<span class="property-value" aria-labelledby="twitter-label"><g:fieldValue bean="${acteurInstance}" field="twitter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acteurInstance?.probabilite}">
				<li class="fieldcontain">
					<span id="probabilite-label" class="property-label"><g:message code="acteur.probabilite.label" default="Probabilite" /></span>
					
						<span class="property-value" aria-labelledby="probabilite-label"><g:fieldValue bean="${acteurInstance}" field="probabilite"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:acteurInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${acteurInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
