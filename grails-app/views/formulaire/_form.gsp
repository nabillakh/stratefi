<%@ page import="stratefi.comparateur.Formulaire" %>



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

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'typeProduit', 'error')} ">
	<label for="typeProduit">
		<g:message code="formulaire.typeProduit.label" default="Type Produit" />
		
	</label>
	<g:select id="typeProduit" name="typeProduit.id" from="${stratefi.comparateur.TypeProduit.list()}" optionKey="id" value="${formulaireInstance?.typeProduit?.id}" class="many-to-one" noSelection="['null': '']"/>

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

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'nombreJoue', 'error')} ">
	<label for="nombreJoue">
		<g:message code="formulaire.nombreJoue.label" default="Nombre Joue" />
		
	</label>
	<g:field name="nombreJoue" value="${fieldValue(bean: formulaireInstance, field: 'nombreJoue')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'nomProjet', 'error')} ">
	<label for="nomProjet">
		<g:message code="formulaire.nomProjet.label" default="Nom Projet" />
		
	</label>
	<g:textField name="nomProjet" value="${formulaireInstance?.nomProjet}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'typeProjet', 'error')} ">
	<label for="typeProjet">
		<g:message code="formulaire.typeProjet.label" default="Type Projet" />
		
	</label>
	<g:select id="typeProjet" name="typeProjet.id" from="${stratefi.comparateur.TypeProjet.list()}" optionKey="id" value="${formulaireInstance?.typeProjet?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'montantRecherche', 'error')} ">
	<label for="montantRecherche">
		<g:message code="formulaire.montantRecherche.label" default="Montant Recherche" />
		
	</label>
	<g:field name="montantRecherche" value="${fieldValue(bean: formulaireInstance, field: 'montantRecherche')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'dureeBesoin', 'error')} ">
	<label for="dureeBesoin">
		<g:message code="formulaire.dureeBesoin.label" default="Duree Besoin" />
		
	</label>
	<g:select id="dureeBesoin" name="dureeBesoin.id" from="${stratefi.comparateur.DureeBesoin.list()}" optionKey="id" value="${formulaireInstance?.dureeBesoin?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'urgenceBesoin', 'error')} ">
	<label for="urgenceBesoin">
		<g:message code="formulaire.urgenceBesoin.label" default="Urgence Besoin" />
		
	</label>
	<g:select id="urgenceBesoin" name="urgenceBesoin.id" from="${stratefi.comparateur.UrgenceBesoin.list()}" optionKey="id" value="${formulaireInstance?.urgenceBesoin?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'nomEntreprise', 'error')} ">
	<label for="nomEntreprise">
		<g:message code="formulaire.nomEntreprise.label" default="Nom Entreprise" />
		
	</label>
	<g:textField name="nomEntreprise" value="${formulaireInstance?.nomEntreprise}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'siren', 'error')} ">
	<label for="siren">
		<g:message code="formulaire.siren.label" default="Siren" />
		
	</label>
	<g:textField name="siren" value="${formulaireInstance?.siren}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'secteur', 'error')} ">
	<label for="secteur">
		<g:message code="formulaire.secteur.label" default="Secteur" />
		
	</label>
	<g:select id="secteur" name="secteur.id" from="${stratefi.comparateur.Secteur.list()}" optionKey="id" value="${formulaireInstance?.secteur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'proprieteMachine', 'error')} ">
	<label for="proprieteMachine">
		<g:message code="formulaire.proprieteMachine.label" default="Propriete Machine" />
		
	</label>
	<g:select id="proprieteMachine" name="proprieteMachine.id" from="${referentiel.ProprieteMachine.list()}" optionKey="id" value="${formulaireInstance?.proprieteMachine?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'proprieteLocaux', 'error')} ">
	<label for="proprieteLocaux">
		<g:message code="formulaire.proprieteLocaux.label" default="Propriete Locaux" />
		
	</label>
	<g:select id="proprieteLocaux" name="proprieteLocaux.id" from="${referentiel.ProprieteLocaux.list()}" optionKey="id" value="${formulaireInstance?.proprieteLocaux?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'croissanceCa', 'error')} ">
	<label for="croissanceCa">
		<g:message code="formulaire.croissanceCa.label" default="Croissance Ca" />
		
	</label>
	<g:select id="croissanceCa" name="croissanceCa.id" from="${referentiel.CroissanceCa.list()}" optionKey="id" value="${formulaireInstance?.croissanceCa?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'volumeClient', 'error')} ">
	<label for="volumeClient">
		<g:message code="formulaire.volumeClient.label" default="Volume Client" />
		
	</label>
	<g:select id="volumeClient" name="volumeClient.id" from="${referentiel.VolumeClient.list()}" optionKey="id" value="${formulaireInstance?.volumeClient?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'creanceClient', 'error')} ">
	<label for="creanceClient">
		<g:message code="formulaire.creanceClient.label" default="Creance Client" />
		
	</label>
	<g:select id="creanceClient" name="creanceClient.id" from="${referentiel.CreanceClient.list()}" optionKey="id" value="${formulaireInstance?.creanceClient?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaireInstance, field: 'marchandise', 'error')} ">
	<label for="marchandise">
		<g:message code="formulaire.marchandise.label" default="Marchandise" />
		
	</label>
	<g:select id="marchandise" name="marchandise.id" from="${referentiel.Marchandise.list()}" optionKey="id" value="${formulaireInstance?.marchandise?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

