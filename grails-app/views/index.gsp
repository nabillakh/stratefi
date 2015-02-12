
<%@ page import="stratefi.comparateur.Acteur" %>
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Alloratio - Financement des PME / startup </title>
                <meta name="description" content="Avec Alloratio, comparez plus de 80  solutions de Financement des PME et Startup et trouvez gratuitement le meilleur financement pour votre Entreprise." />
                <meta name="keywords" content="financement, crédit, levée de fonds, crowdfunding, PME, startup" />
                
                <meta name="robots" content="index">
                <g:javascript library="jquery" plugin="jquery" />
                
          <style type="text/css">
        #fond{
          color:white;
          background-color:white;
 background-repeat:no-repeat;
 background-image:url(${request.contextPath}/images/fond4.jpg);
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
          
          
        <!-- 66d420ae67d30003 -->                
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
          <section class="panel">

    <div class="panel-body"  id="fond">
                                  <div  class="position-center">   
                    <div>
                               <h1 title="Financement des PME et startup" class="center" size="2">Partenaire privilégié du financement des PME et des startup</h1>
                               <span class="text-muted">Pour <strong>Startup</strong> et <strong>PME</strong></span> </br>
                               <p align="justify"></br>
                                 Avec Alloratio, améliorez la <strong>trésorerie</strong> de VOTRE <strong>entreprise</strong>, 
                                 sécurisez simplement vos financements et trouvez les meilleures solutions pour VOTRE entreprise.. 
                               </p>     </br>
                               
                           </div>
                           </div>
      </br>
        <div class="position-center">
<div id="">
      <p style="justify">Pour être informé en exclusivité sur les meilleurs solutions de financement ...</p>
      
                            <div class="text-center">
                                <a href="#myModal-2" data-toggle="modal" class="btn btn-danger">
                                    Inscrivez vous !
                                </a>
</div></div></div>
                           </div>
            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-2" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 class="modal-title">Inscription</h4>
                                    </div>
                                    <div class="modal-body">
                                       <form action="//alloratio.us9.list-manage.com/subscribe/post?u=632080c30e7788c41b60ffbcd&amp;id=7c86294c9b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll"  class="position-center">
     <p style="justify">Si vous souhaitez être informé des mises à jour de nos données et profiter d'outils simples pour 
      vos financements, inscrivez-vous ici !</p>
        
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
    <div class="clear"><input type="submit" value="S'inscrire" name="subscribe" id="mc-embedded-subscribe" class="btn btn-info"> 
    </div>
    </div>
</form>

                                    </div>

                                </div>
                            </div>
                        </div>
          </section>
        
        
          <section class="panel">
                    <div class="panel-body">
                                  <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                    <h1 style="color:black" title="formation finance">Analyse financière</h1>
                                    <p>Evaluation</p>
                                </div>
                                    <p style="justify">Avant tout financement, les partenaires financiers de l'entreprise évaluent sa santé financière. 
                                      Nous vous accompagnons pour vous donner les mêmes grilles de lecture que vos financeurs, réaliser un diagnostic de votre trésorerie
                                      et vous proposer des marges de manoeuvre.
                                    </p>
                                    <center>
                                      <g:link action="analyseFi" controller="admin" class="btn btn-white" title="formation financement"><i class="fa fa-eye"></i>  Voir </g:link>
                                    </center>

                            </section>
                        </aside>
                                    
                           </div>
                      <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                    <h1 style="color:black" title="comparateur financement">Comparateur financement</h1>
                                    <p style="justify">Prospection</p>
                                </div>
                              
                                    <p>Vous passez beaucoup de temps à chercher des solutions de financement?
                                      Vous souhaitez pouvoir choisir simplement la source de financement la plus adaptée à votre 
                                      PME ( coût, qualité et temps) ? Alors essayez dès maintenant notre comparateur.
                                    </p>
                                    <center>
                                      <g:link action="listeFinancement" controller="comparateur" class="btn btn-white" title="comparateur financement"><i class="fa fa-eye"></i>  Voir </g:link>
                                    </center>

                            </section>
                        </aside>
                                    
                           </div>
                      <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                    <h1 style="color:black" title="technique financement">Bonnes pratiques</h1>
                                    <p>Amélioration</p>
                                </div>

                                    <p style="justify">Fini la solitude du dirigeant face à ses problèmes de trésorerie, Alloratio développe pour vous un service d'échange collaboratif de bonnes pratiques de gestion de trésorerie. Profitez du REX de vos homologues et améliorez facilement votre trésorerie!
                                    </p>
                                    <center>
                                      <g:link action="bonnesPratiques" controller="admin" class="btn btn-white" title="pratique financement"><i class="fa fa-eye"></i>  Voir </g:link>
                                    </center>

                            </section>
                        </aside>
                                    
                           </div>
                    </div>
                </section>
        
        
        <section class="panel">
        <div class="panel-body" id="fond2">
<div>
<form action="//alloratio.us9.list-manage.com/subscribe/post?u=632080c30e7788c41b60ffbcd&amp;id=7c86294c9b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll"  class="position-center">
      Pour pouvoir financer ses projets (investissements, développement international etc.), le dirigeant d'entreprise dispose d'une offre de financements traditionnels (crédit bancaire, fonds d'investissement etc.) mais aussi de solutions innovantes alternatives (crowdfunding equity, financement de factures...). L'offre de produits de financement étant importante, il est difficile pour le dirigeant de s'orienter vers le meilleur produit pour sa société : en terme de type (dette, capital, créances...), de coût et de délai
      <p style="justify">Restez informé des meilleures solutions de financement !</p>
        
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
