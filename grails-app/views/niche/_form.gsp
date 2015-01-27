<%@ page import="stratefi.comparateur.Niche" %>



<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'mixProduits', 'error')} ">
	<label for="mixProduits">
		<g:message code="niche.mixProduits.label" default="Mix Produits" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${nicheInstance?.mixProduits?}" var="m">
    <li><g:link controller="mixProduit" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mixProduit" action="create" params="['niche.id': nicheInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mixProduit.label', default: 'MixProduit')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'titre', 'error')} ">
	<label for="titre">
		<g:message code="niche.titre.label" default="Titre" />
		
	</label>
	<g:textField name="titre" value="${nicheInstance?.titre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'keywords', 'error')} ">
	<label for="keywords">
		<g:message code="niche.keywords.label" default="Keywords" />
		
	</label>
	<g:textField name="keywords" value="${nicheInstance?.keywords}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'textePublie', 'error')} ">
	<label for="textePublie">
		<g:message code="niche.textePublie.label" default="Texte Publie" />
		
	</label>
	<g:textField name="textePublie" value="${nicheInstance?.textePublie}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'publie', 'error')} ">
	<label for="publie">
		<g:message code="niche.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${nicheInstance?.publie}" />

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="niche.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${nicheInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="niche.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${nicheInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'secteur', 'error')} ">
	<label for="secteur">
		<g:message code="niche.secteur.label" default="Secteur" />
		
	</label>
	<g:select id="secteur" name="secteur.id" from="${stratefi.comparateur.Secteur.list()}" optionKey="id" value="${nicheInstance?.secteur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'typeProduit', 'error')} ">
	<label for="typeProduit">
		<g:message code="niche.typeProduit.label" default="Type Produit" />
		
	</label>
	<g:select id="typeProduit" name="typeProduit.id" from="${stratefi.comparateur.TypeProduit.list()}" optionKey="id" value="${nicheInstance?.typeProduit?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'typeProjet', 'error')} ">
	<label for="typeProjet">
		<g:message code="niche.typeProjet.label" default="Type Projet" />
		
	</label>
	<g:select id="typeProjet" name="typeProjet.id" from="${stratefi.comparateur.TypeProjet.list()}" optionKey="id" value="${nicheInstance?.typeProjet?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nicheInstance, field: 'nombreJoue', 'error')} ">
	<label for="nombreJoue">
		<g:message code="niche.nombreJoue.label" default="Nombre Joue" />
		
	</label>
	<g:field name="nombreJoue" value="${fieldValue(bean: nicheInstance, field: 'nombreJoue')}"/>

</div>

