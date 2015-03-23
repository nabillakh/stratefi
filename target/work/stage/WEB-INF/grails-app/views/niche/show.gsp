
<%@ page import="stratefi.comparateur.Formulaire" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formulaire.label', default: 'Formulaire')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formulaire" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formulaire" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formulaire">
			
				<g:if test="${formulaireInstance?.mixProduits}">
				<li class="fieldcontain">
					<span id="mixProduits-label" class="property-label"><g:message code="formulaire.mixProduits.label" default="Mix Produits" /></span>
					
						<g:each in="${formulaireInstance.mixProduits}" var="m">
						<span class="property-value" aria-labelledby="mixProduits-label"><g:link controller="mixProduit" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.titre}">
				<li class="fieldcontain">
					<span id="titre-label" class="property-label"><g:message code="formulaire.titre.label" default="Titre" /></span>
					
						<span class="property-value" aria-labelledby="titre-label"><g:fieldValue bean="${formulaireInstance}" field="titre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.keywords}">
				<li class="fieldcontain">
					<span id="keywords-label" class="property-label"><g:message code="formulaire.keywords.label" default="Keywords" /></span>
					
						<span class="property-value" aria-labelledby="keywords-label"><g:fieldValue bean="${formulaireInstance}" field="keywords"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.textePublie}">
				<li class="fieldcontain">
					<span id="textePublie-label" class="property-label"><g:message code="formulaire.textePublie.label" default="Texte Publie" /></span>
					
						<span class="property-value" aria-labelledby="textePublie-label"><g:fieldValue bean="${formulaireInstance}" field="textePublie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.publie}">
				<li class="fieldcontain">
					<span id="publie-label" class="property-label"><g:message code="formulaire.publie.label" default="Publie" /></span>
					
						<span class="property-value" aria-labelledby="publie-label"><g:formatBoolean boolean="${formulaireInstance?.publie}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="formulaire.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${formulaireInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="formulaire.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${formulaireInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.secteur}">
				<li class="fieldcontain">
					<span id="secteur-label" class="property-label"><g:message code="formulaire.secteur.label" default="Secteur" /></span>
					
						<span class="property-value" aria-labelledby="secteur-label"><g:link controller="secteur" action="show" id="${formulaireInstance?.secteur?.id}">${formulaireInstance?.secteur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.typeProduit}">
				<li class="fieldcontain">
					<span id="typeProduit-label" class="property-label"><g:message code="formulaire.typeProduit.label" default="Type Produit" /></span>
					
						<span class="property-value" aria-labelledby="typeProduit-label"><g:link controller="typeProduit" action="show" id="${formulaireInstance?.typeProduit?.id}">${formulaireInstance?.typeProduit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.typeProjet}">
				<li class="fieldcontain">
					<span id="typeProjet-label" class="property-label"><g:message code="formulaire.typeProjet.label" default="Type Projet" /></span>
					
						<span class="property-value" aria-labelledby="typeProjet-label"><g:link controller="typeProjet" action="show" id="${formulaireInstance?.typeProjet?.id}">${formulaireInstance?.typeProjet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaireInstance?.nombreJoue}">
				<li class="fieldcontain">
					<span id="nombreJoue-label" class="property-label"><g:message code="formulaire.nombreJoue.label" default="Nombre Joue" /></span>
					
						<span class="property-value" aria-labelledby="nombreJoue-label"><g:fieldValue bean="${formulaireInstance}" field="nombreJoue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formulaireInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formulaireInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
