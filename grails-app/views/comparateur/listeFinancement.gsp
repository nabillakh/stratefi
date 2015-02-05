
<%@ page import="stratefi.comparateur.Acteur" %>
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Alloratio - Financement des PME / startup </title>
                <meta name="description" content="Avec Alloratio, comparez Gratuitement ${acteurInstanceList?.size()} solutions de Financement des PME et Startup et trouvez le meilleur Financement pour votre Entreprise." />
                <meta name="keywords" content="financement, financement participatif, crédit, levée de fonds, crowdfunding, PME, startup" />
                
                <meta name="robots" content="index">
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
     <g:set var="lien" value="http://www.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
        <section class="panel"> 
    <div class="panel-body"  id="fond2">
                                  <div  class="position-center">   
                    <div>
                               <h1 title="Formation finance d'entreprise" class="center" size="2">Comparateur de financement pour PME et startup</h1>
                               <span class="text-muted">Trouvez rapidement les financements les plus adaptés à votre <strong>entreprise</strong></span> </br>
                                                            
                           </div>
                           </div>
 <div class="col-lg-1 col-sm-1">  
                           </div>
 <div class="col-lg-7 col-sm-7">   
   <div class="profile-desk">
     </br>
                               <span class="text-muted"></span>
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
    </div>
   
                                   </div>

 <div class="col-lg-4 col-sm-4">
   </br>
<div id="">
  <div class="text-center">
      <p></br> Pour utiliser notre comparateur en exclusivité, veuillez cliquer ici ! </br>
       </p>
      
                                <a href="${lien}/comparateur/index" class="btn btn-danger" title="comparateur financement PME startup">
                                    J'essaie !
                                </a>
</div>

</div></div>
      
      

                           </div>
            
          </section>
        
        <section class="panel">
                    <div class="panel-body">
                                  <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                  <a href="#"></br>
                                        <img alt="" src="${request.contextPath}/images/dashboard.png">
                                    </a>
                                    <h1 style="color:black" title="moyen de financement">Financement adapté à vos besoins</h1>
                                    <p>Qualité</p>
                                </div>
                                    <p style="justify">Les financements sont classés selon de multiples critères qui nous permettent
                                      de vous proposer les financements adaptés à votre problématique. 
                                    </p>
                                    

                            </section>
                        </aside>
                                    
                           </div>
                      <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                  <a href="#"></br>
                                        <img alt="Délai financement" src="${request.contextPath}/images/clock.png">
                                    </a>
                                    <h1 style="color:black" title="comparateur financement">Recherche de financement en 1 Clic </h1>
                                    <p style="justify">Délai</p>
                                </div>
                              
                                    <p>Accédez en quelques secondes aux Financements adaptés à vos Projets et aux principales informations
                                      associées (Qui? Quoi? Combien?).
                                    </p>
                                    

                            </section>
                        </aside>
                                    
                           </div>
                      <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                  <a href="#"></br>
                                        <img alt="" src="${request.contextPath}/images/money.png">
                                    </a>
                                    <h1 style="color:black" title="suivi formation finance">Simulation rapide des frais financiers</h1>
                                    <p>Coût</p>
                                </div>

                                    <p style="justify">
                                      Pour simuler rapidement le coût de vos financements, nous mettons à jour pour chaque solution
                                      une estimation des frais à prévoir.
                                    </p>
                            </section>
                        </aside>
                                    
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
       
        
        <section>
          <div class="panel-body"  id="fond">

   </br>
<div id="">
  <div class="text-center">
      <p></br> Pour utiliser notre comparateur en exclusivité, veuillez cliquer ici ! </br>
       </p>
      
                                <a href="${lien}/comparateur/index" class="btn btn-danger" title="comparateur financement PME startup">
                                    J'essaie !
                                </a></br></br>
</div>

</div>
      
      

                           </div>
        </section>
        
        
          
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
<!--End mc_embed_signup-->
<link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
</style>


               
	</body>
</html>
