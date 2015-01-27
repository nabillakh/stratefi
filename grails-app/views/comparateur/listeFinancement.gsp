
<%@ page import="stratefi.comparateur.Acteur" %>
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup </title>
                <meta name="description" content="${acteurInstanceList.size()} solutions de Financement des PME et Startup" />
                <meta name="keywords" content="financement, crédit, levée de fonds, crowdfunding, PME, startup" />
                
                <g:javascript library="jquery" plugin="jquery" />
                
          <style type="text/css">
        #fond{
          color:white;
          background-color:white;
 background-repeat:no-repeat;
 background-image:url(${request.contextPath}/images/fond.jpg);
        }
        #fond2{
          color:black;
          background-color:white;
 background-repeat:no-repeat;
 background-image:url(${request.contextPath}/images/fond2.jpg);
        }
	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
                
  </head>
	<body>
          
          
                        
<g:if env="production">
     <g:set var="lien" value="http://default-environment-ej4fwvib6c.elasticbeanstalk.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
          <section class="panel"> 
    <div class="panel-body"  id="fond">
                                  <div class="col-lg-8 col-sm-8">   
                    <div>
                               <h1 title="Financements Startup et PME" class="center" size="2">Solutions de financement 
                               </h1>
                               <span class="text-muted">Pour <strong>Startup</strong> et <strong>PME</strong></span> </br>
                               <p align="justify"></br>
                                  Alloratio propose gratuitement aux dirigeants de <strong>PME</strong> et de <strong>start-up</strong> un comparateur des solutions de financement. L'offre est classée selon plusieurs critères :
                               </p>
                                    <div class="panel-body">
                        <ul>
                            <li>
                                Type de produits (crédit, levée de fonds...)
                            </li>
                            <li>
                              Périmètre d'intervention (startup, innovation, investissements productifs...)
                              
                            </li>
                            <li>
                                Coût moyen
                            </li>
                        </ul>
                    </div>
                        <!--       </br>
                               <form action="comparateur/recherche" method="get" id="searchableForm" name="searchableForm"  class="form-inline">
                                    
                                    <div class="form-group">
                                        <label class="control-label"></label>
                                        <div class="col-sm-12">
                                          <input type="text" name="q" size="50" id="q"  class="form-control" placeholder="Saisir des mots clés. Ex : levée de fonds, crédit énergie"/> </br>
                                        </div>
                                      </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-5"></label>
                                        <div class="">
                                          <input type="submit" value="Recherche"   class="btn btn-danger"/>
                                        </div>
                                      </div>
                                                        
                                 
                              </form>
                               
                              --> 
                               
                               
                           </div>
                           </div>

        <div class="col-lg-4 col-sm-4">
<div id="">
<form action="//alloratio.us9.list-manage.com/subscribe/post?u=632080c30e7788c41b60ffbcd&amp;id=7c86294c9b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll"  class="position-center">
      </br></br><p style="justify">Restez informé des meilleures solutions de financement !</p>
        
<div class="form-group">
	<label for="mce-EMAIL">Adresse email  <span class="asterisk">*</span>
</label>
	<input type="email" value="" name="EMAIL" class="required email form-control" id="mce-EMAIL">
</div>
<div class="form-group">
	<label for="mce-NAME">NOM Prenom
</label>
	<input type="text" value="" name="NAME" class="form-control" id="mce-NAME">
</div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" style="display:none"></div>
		<div class="response" id="mce-success-response" style="display:none"></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;"><input type="text" name="b_632080c30e7788c41b60ffbcd_7c86294c9b" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="S'inscrire" name="subscribe" id="mc-embedded-subscribe" class="btn btn-info"></div>
    </div>
</form>
</div></div>
                           </div>
          </section>
          <section class="panel">
                    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <h1 title="Financements Startup et PME" class="center" size="2">Comparateur de financement
                               </h1>
                               </br>
                               <form action="comparateur/index" method="get" id="searchableForm" name="searchableForm"  class="form-horizontal">
                               
                               <div class="form-group">
                                <label class="col-lg-3 col-sm-3 control-label">Type de produit</label>
                                <div class="col-lg-9">
                                    <select class="form-control" id="typeProduit" name="typeProduit">
                                        <optgroup label="">
                                                  <option value="-1" activate> Tous </option>
                                            <g:each in="${typeProduit}" status="i" var="item">
                                                  <option value="${item.id}">${item.nom}</option>
                                                </g:each>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                               <div class="form-group">
                                <label class="col-lg-3 col-sm-3 control-label">Secteur</label>
                                <div class="col-lg-9">
                                    <select class="form-control" id="secteur" name="secteur">
                                        <optgroup label="">
                                                  <option value="-1" activate> Tous </option>
                                            <g:each in="${secteurs}" status="i" var="item">
                                                  <option value="${item.id}">${item.nom}</option>
                                                </g:each>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                                 
                               <div class="form-group">
                                <label class="col-lg-3 col-sm-3 control-label">Type de projet</label>
                                <div class="col-lg-9">
                                    <select  class="form-control" id="typeProjet" name="typeProjet">
                                        <optgroup label="">
                                                  <option value="-1" activate> Tous </option>
                                            <g:each in="${typeProjet}" status="i" var="item">
                                                  <option value="${item.id}">${item.nom}</option>
                                                </g:each>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-5"></label>
                                        <div class="">
                                          <input type="submit" value="Recherche"   class="btn btn-danger"/>
                                        </div>
                                      </div>
                                 
                              </form>
                           </div>
                           </div>
                    </div>
                </section>
        <section class="panel">
                    <header class="panel-heading tab-bg-dark-navy-blue">
                        <ul class="nav nav-tabs nav-justified ">
                            <li class="active" title="Type de financement">
                                <a data-toggle="tab" href="#produit" >
                                    Filtre par produit
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#secteurs" title="Financement par secteur">
                                    Filtre par secteur cible
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#projet" title="Projet à financer">
                                    Filtre par type de projets
                                </a>
                            </li>
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="produit" class="tab-pane active">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Source de financement}">  Type de produits :</h2>
                                      
                              <g:each in="${typeProduit}">
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="${it.nomSEO}">
                                                    ${fieldValue(bean: it, field: "nom")}
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4"> 
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/financement/${it.id}/${it.nomSEO}" title ="${it.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                    </div>
                                </div>
                            </div>
                            <div id="secteurs" class="tab-pane ">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Secteurs financés">Secteurs couverts : </h2>
                                      
                              <g:each in="${secteurs}">
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="${it.nomSEO}">
                                                    ${fieldValue(bean: it, field: "nom")}
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                  
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/secteur/${it.id}/${it.nomSEO}" title ="${it.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                    </div>
                                </div>
                            </div>                          
                            <div id="projet" class="tab-pane ">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Projets financés"> Type de projets : </h2>
                                      
                              <g:each in="${typeProjet}">
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="${it.nomSEO}">
                                                        ${fieldValue(bean: it, field: "nom")}
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                  
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/financement_projet/${it.id}/${it.nomSEO}" title ="${it.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
        <section class="panel">
        <div class="panel-body" id="fond2">
<div>
<form action="//alloratio.us9.list-manage.com/subscribe/post?u=632080c30e7788c41b60ffbcd&amp;id=7c86294c9b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll"  class="position-center">
      Pour pouvoir financer ses projets (investissements, développement international etc.), le dirigeant d'entreprise dispose d'une offre de financements traditionnels (crédit bancaire, fonds d'investissement etc.) mais aussi de solutions innovantes alternatives (crowdfunding equity, financement de factures...). L'offre de produits de financement étant importante, il est difficile pour le dirigeant de s'orienter vers le meilleur produit pour sa société : en terme de type (dette, capital, créances...), de coût et de délai
      </br></br><p style="justify">Restez informé des meilleures solutions de financement !</p>
        
<div class="form-group">
	<label for="mce-EMAIL">Adresse email  <span class="asterisk">*</span>
</label>
	<input type="email" value="" name="EMAIL" class="required email form-control" id="mce-EMAIL">
</div>
<div class="form-group">
	<label for="mce-NAME">NOM Prenom
</label>
	<input type="text" value="" name="NAME" class="form-control" id="mce-NAME">
</div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" style="display:none"></div>
		<div class="response" id="mce-success-response" style="display:none"></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;"><input type="text" name="b_632080c30e7788c41b60ffbcd_7c86294c9b" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="S'inscrire" name="subscribe" id="mc-embedded-subscribe" class="btn btn-danger"></div>
    </div>
</form>
</div></div>
        </section>
                 <!--   <div class="col-md-3">
                     <header class="panel-heading tab-bg-dark-navy-blue ">
                          <ul class="nav nav-pills nav-stacked">
                        <li class="active">
                            <a data-toggle="tab" href="#home">Home</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#about">About</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#profile">Profile</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#contact">Contact</a>
                        </li>
                    </ul>
                </header>
                       </div>
            <div class="panel-body">
                    <div class="tab-content">
                        <div id="home" class="tab-pane active">
                           
                               
                        </div>
                        <div id="about" class="tab-pane">
            <div id="list-acteur" class="adv-table">
                        <div class="col-md-3" title="acteurs du financement">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span>
            <div class="mini-stat-info">
                <span>${acteurInstanceList.size()}</span>
                Acteurs référencés
            </div>
        </div>
    </div>
    <div class="col-md-3" title="financement par secteur">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon tar"><i class="fa fa-tag"></i></span>
            <div class="mini-stat-info">
                <span>${secteurs.size()}</span>
                Secteurs couverts
            </div>
        </div>
    </div>
    <div class="col-md-3" title="type de financement">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon pink"><i class="fa fa-money"></i></span>
            <div class="mini-stat-info">
                <span>${typeProduit.size()}</span>
                Types de financement
            </div>
        </div>
    </div>
    <div class="col-md-3" title="type de projets à financer">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon green"><i class="fa fa-eye"></i></span>
            <div class="mini-stat-info">
                <span>${typeProjet.size()}</span>
                Types de projets
            </div>
        </div>
    </div>
                        </div>
                        </div>
                        <div id="profile" class="tab-pane">Profile</div>
                        <div id="contact" class="tab-pane">Contact</div>
                    </div>
                </div> -->
                    <!--<div class="panel-body profile-information"  style="background-image: url(../images/test.jpg); height: 500px; width: 800px; opacity: 0.1; border: 1px solid black;"> -->
                  <!--  <div class="panel-body profile-information col-md-9">
                       <div class="panel-body">
                    <div class="tab-content">
                        <div id="home" class="tab-pane active">
                           <div class="">
                               <h1 title="Financements Startup et PME">Financement des PME et startup</h1>
                               <span class="text-muted"></span>
                               </br><p>
                                  Alloratio vous propose ici gratuitement la liste des acteurs qui financent les PME et startup. Ces
                                  acteurs sont classés selon différents critères :
                               </p>
                                    <div class="panel-body">
                        <ul>
                            <li>
                                Secteurs cibles
                            </li>
                            <li>
                                Types de produits
                            </li>
                            <li>
                                Types de projets
                            </li>
                        </ul>
                    </div>
                               <p>
                               Cliquez sur l'une des icones ci dessous afin d'accéder aux détails.
                               </p>
                           </div>
                               
                        </div>
                        <div id="about" class="tab-pane">
            <div id="list-acteur" class="adv-table">
                        <div class="col-md-3" title="acteurs du financement">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span>
            <div class="mini-stat-info">
                <span>${acteurInstanceList.size()}</span>
                Acteurs référencés
            </div>
        </div>
    </div>
    <div class="col-md-3" title="financement par secteur">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon tar"><i class="fa fa-tag"></i></span>
            <div class="mini-stat-info">
                <span>${secteurs.size()}</span>
                Secteurs couverts
            </div>
        </div>
    </div>
    <div class="col-md-3" title="type de financement">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon pink"><i class="fa fa-money"></i></span>
            <div class="mini-stat-info">
                <span>${typeProduit.size()}</span>
                Types de financement
            </div>
        </div>
    </div>
    <div class="col-md-3" title="type de projets à financer">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon green"><i class="fa fa-eye"></i></span>
            <div class="mini-stat-info">
                <span>${typeProjet.size()}</span>
                Types de projets
            </div>
        </div>
    </div>
                        </div>
                        </div>
                        <div id="profile" class="tab-pane">Profile</div>
                        <div id="contact" class="tab-pane">Contact</div>
                    </div>
                </div>
                        
		
                    </div> 
    </section> 
    <!-- <section class="panel">
    <div class="panel-body">
                                  <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2>Financements</h2>
                                    </div>
                                    <p> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                                    <table class="table  table-hover general-table">
                            <thead>
                            <tr>
                                <th> Nom </th>
                                <th class="hidden-phone">Slogan</th>
                                <th>Fiche</th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${acteurInstanceList}" status="i" var="acteurInstance">
                            <tr>
                              <td><a href="${request.contextPath}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}">${fieldValue(bean: acteurInstance, field: "nom")}</a></td>
					
						<td>${acteurInstance?.slogan}</td>
					
						<td><a href="${request.contextPath}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}">
                                    <i class="fa fa-arrow-right"></i> Voir la fiche
                             </a></td>
                            </tr>
                            </g:each>

                            </tbody>
                        </table>
                                </div>
    </section> -->
          	<!-- Begin MailChimp Signup Form -->
                
<script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='NAME';ftypes[1]='text'; /*
 * Translated default messages for the $ validation plugin.
 * Locale: FR
 */
$.extend($.validator.messages, {
        required: "Ce champ est requis.",
        remote: "Veuillez remplir ce champ pour continuer.",
        email: "Veuillez entrer une adresse email valide.",
        url: "Veuillez entrer une URL valide.",
        date: "Veuillez entrer une date valide.",
        dateISO: "Veuillez entrer une date valide (ISO).",
        number: "Veuillez entrer un nombre valide.",
        digits: "Veuillez entrer (seulement) une valeur numérique.",
        creditcard: "Veuillez entrer un numéro de carte de crédit valide.",
        equalTo: "Veuillez entrer une nouvelle fois la même valeur.",
        accept: "Veuillez entrer une valeur avec une extension valide.",
        maxlength: $.validator.format("Veuillez ne pas entrer plus de {0} caractères."),
        minlength: $.validator.format("Veuillez entrer au moins {0} caractères."),
        rangelength: $.validator.format("Veuillez entrer entre {0} et {1} caractères."),
        range: $.validator.format("Veuillez entrer une valeur entre {0} et {1}."),
        max: $.validator.format("Veuillez entrer une valeur inférieure ou égale à {0}."),
        min: $.validator.format("Veuillez entrer une valeur supérieure ou égale à {0}.")
});}(jQuery));var $mcj = jQuery.noConflict(true);</script>
<link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
</style>


               
	</body>
</html>
