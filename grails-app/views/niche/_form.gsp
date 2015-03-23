<%@ page import="stratefi.comparateur.Niche" %>



<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'mixProduits', 'error')} ">
	<label for="mixProduits">
		<g:message code="formulaire.mixProduits.label" default="Mix Produits" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${formulaireInstance?.mixProduits?}" var="m">
    <li><g:link controller="mixProduit" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mixProduit" action="create" params="['formulaire.id': formulaireInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mixProduit.label', default: 'MixProduit')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'titre', 'error')} ">
	<label for="titre">
		<g:message code="formulaire.titre.label" default="Titre" />
		
	</label>
	<g:textField name="titre" value="${formulaireInstance?.titre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'keywords', 'error')} ">
	<label for="keywords">
		<g:message code="formulaire.keywords.label" default="Keywords" />
		
	</label>
	<g:textField name="keywords" value="${formulaireInstance?.keywords}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'textePublie', 'error')} ">
	<label for="textePublie">
		<g:message code="formulaire.textePublie.label" default="Texte Publie" />
		
	</label>
	<g:textField name="textePublie" value="${formulaireInstance?.textePublie}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'publie', 'error')} ">
	<label for="publie">
		<g:message code="formulaire.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${formulaireInstance?.publie}" />

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="formulaire.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${formulaireInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="formulaire.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${formulaireInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'secteur', 'error')} ">
	<label for="secteur">
		<g:message code="formulaire.secteur.label" default="Secteur" />
		
	</label>
	<g:select id="secteur" name="secteur.id" from="${stratefi.comparateur.Secteur.list()}" optionKey="id" value="${formulaireInstance?.secteur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'typeProduit', 'error')} ">
	<label for="typeProduit">
		<g:message code="formulaire.typeProduit.label" default="Type Produit" />
		
	</label>
	<g:select id="typeProduit" name="typeProduit.id" from="${stratefi.comparateur.TypeProduit.list()}" optionKey="id" value="${formulaireInstance?.typeProduit?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'typeProjet', 'error')} ">
	<label for="typeProjet">
		<g:message code="formulaire.typeProjet.label" default="Type Projet" />
		
	</label>
	<g:select id="typeProjet" name="typeProjet.id" from="${stratefi.comparateur.TypeProjet.list()}" optionKey="id" value="${formulaireInstance?.typeProjet?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'nombreJoue', 'error')} ">
	<label for="nombreJoue">
		<g:message code="formulaire.nombreJoue.label" default="Nombre Joue" />
		
	</label>
	<g:field name="nombreJoue" value="${fieldValue(bean: formulaireInstance, field: 'nombreJoue')}"/>

</div>

