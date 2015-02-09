
<!DOCTYPE html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>${acteurInstance?.nom} - Présentation d'un acteur du ${acteurInstance?.typeActeur.nom}</title>
                <meta name="description" content="${acteurInstance?.nomSEO} - Spécialiste ${acteurInstance?.typeActeur.nom} pour PME et startup" />
                <meta name="keywords" content="financement, ${acteurInstance?.nomSEO}, ${acteurInstance?.typeActeur.nom}, PME, startup" />
                <g:if test="${acteurInstance?.publie}">
                <meta name="robots" content="index">
                </g:if>
                <g:else>
                  <meta name="robots" content="noindex">    
                </g:else>
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  <!--<section class="panel"> 
    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <form action="${lien}/comparateur/recherche" method="get" id="searchableForm" name="searchableForm" class="form-inline">
                                    
                                    <div class="form-group">
                                        <label class="control-label"></label>
                                        <div class="col-sm-12">
                                          <input type="text" name="q" size="50" id="q"  value="${acteurInstance.nom}"class="form-control" placeholder="Saisir des mots clés. Ex : levée de fonds, crédit énergie"/> </br>
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
          </section>-->
  <section class="panel">    

    
                    <div class="panel-body profile-information">
                       <div class="col-md-3">
                           <div class="profile-pic text-center">
                        <!--       <img src="${request.contextPath}/images/test.jpg" title="${acteurInstance?.nomSEO}"/> -->
                             <g:if test="${ (acteurInstance.publie)}">
                               <img  src="${request.contextPath}/images/logo/${acteurInstance?.image}" alt="${acteurInstance?.nom}"/>
                                   </g:if>
                               <g:else>
                               <img  src="${request.contextPath}/images/fond2.jpg"/>
                               
                               </g:else>
                           </div>
                       </div>
                       <div class="col-md-9">
                           <div class="profile-desk">
                               <h1 title="${acteurInstance?.nomSEO} - ${acteurInstance?.typeActeur.nom}">${acteurInstance?.nom}</h1>
                               <span class="text-muted">${acteurInstance?.typeActeur.nom}</span>
                               <span class="tm">${acteurInstance?.slogan}</span>
                               </br><p>
                                 <g:if test="${ (acteurInstance.publie)}">
                                   ${raw(acteurInstance?.description)}
                                   </g:if>
                               <g:else>
                                 Cette fiche sur la société ${acteurInstance?.nom} est en cours de construction. Si vous souhaitez être informé de 
                                 la publication de l'analyse de cette entreprise, inscrivez vous !
                               </g:else>
                               </p>
                               
                                 <g:if test="${ (acteurInstance.publie)}">
                                   <center>
                               <a href="${acteurInstance?.url}" class="btn btn-danger" title="${acteurInstance?.nomSEO}" rel="external">Consulter ce site</a>
                               </center>
                                   </g:if>
                               <g:else>
         
<div id="">
<form action="//alloratio.us9.list-manage.com/subscribe/post?u=632080c30e7788c41b60ffbcd&amp;id=305c2535db" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll">
<div class="mc-field-group">
  
	<input type="email" value="" name="EMAIL" class="required email form-control" id="mce-EMAIL" placeholder ='Adresse email'>
</div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" style="display:none"></div>
		<div class="response" id="mce-success-response" style="display:none"></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;"><input type="text" name="b_632080c30e7788c41b60ffbcd_305c2535db" tabindex="-1" value=""></div>
    <center>
      <div class="clear center-block"><input type="submit" value="S'inscrire" name="subscribe" id="mc-embedded-subscribe" class="btn btn-danger"></div>
      </center>
    </div>
</form>
</div>
              
                               </g:else>
                           </div>
                       </div>
<ul>
                                    
                                   
                               </ul>
                       
                    </div>
    
                </section>
  
  
  <section class="panel">
                    <div class="panel-body">
              <div class="col-md-6">
                               <h2 title="${acteurInstance?.nomSEO} - projet"> Projets :</h2>
                                     <g:each in="${typeProjets}" status="i" var="item">
                                       <g:if test="${ ( i <  4)}">
                                         <li>
                                             <a href="${lien}/financement_projet/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME" >                                           
                                                                      ${item.nom}
                                                                                      </a>
                            </li>
                                 </g:if>
                               </g:each>
              </div>
              <div class="col-md-6">
                               <h2 title="${acteurInstance?.nomSEO} - périmètre"> Secteurs :</h2>
                                 <g:each in="${perimetre}" status="i" var="item">
                                       <g:if test="${ ( i <  4)}">
                                         <li>
                                           <a href="${lien}/secteur/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME">
                                           ${item.nom}
                                                                                      </a>
                            </li>
                                 </g:if>
                               </g:each>
                           
                             <!--  <h2 title="coût des projets sur ${acteurInstance?.nomSEO}">5,61,240 €</h2>
                               <p>Coût financement de 50 000 €</p> -->
                               
                           </div>
                    </div>
  </section>
  
  
  <section class="panel">
    <div class="wdgt-row">
                <img src="${request.contextPath}/images/fond4.jpg" height="90" alt="contact ${acteurInstance?.nom}">
                <div class="wdt-head">
                  <p>${acteurInstance?.nom} dans les réseaux sociaux</p>
                                 </div>
            </div>
  <div class="panel-body">
                <div class="row weather-full-info">
                    
                    <div class="">
                      <center>
                        <ul class="">
                             <g:if test="${acteurInstance.linkedin}">
                                   <li>
                                       <a href="${acteurInstance.linkedin}" title="Timeline Linkedin de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-linkedin"></i>
                                       </a>
                                   </li>
                                     </g:if>
                             
                                     <g:if test="${acteurInstance.facebook}">
                                   <li>
                                       <a href="${acteurInstance.facebook}" title="Page Facebook de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-facebook"></i>
                                       </a>
                                   </li>
                                     </g:if>
                                     <g:if test="${acteurInstance.twitter}">
                                   <li>
                                       <a href="${acteurInstance.twitter}" title="Timeline Twitter de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-twitter"></i>
                                       </a>
                                   </li>
                                     </g:if>
                                     <g:if test="${acteurInstance.googleplus}">
                                   <li>
                                       <a href="${acteurInstance.googleplus}" title="Page google+ de ${acteurInstance?.nomSEO}"  rel="external">
                                           <i class="fa fa-google-plus"></i>
                                       </a>
                                   </li>
                                     </g:if>
                            
                        </ul></center>
                    </div>
                </div>
            </div>
  </section>
  
                <section class="panel">
                    <header class="panel-heading tab-bg-dark-navy-blue">
                        <ul class="nav nav-tabs nav-justified ">
                            <li class="active" title="Offre de : ${acteurInstance?.nomSEO}">
                                <a data-toggle="tab" href="#offre">
                                    Offre
                                </a>
                            </li>
                         <!--   <li title="Ce que pensent les entrepreneurs de ${acteurInstance?.nomSEO}">
                                <a data-toggle="tab" href="#avis" class="contact-map">
                                    Avis d'entrepreneurs
                                </a>
                            </li> 
                            <li>
                                <a data-toggle="tab" href="#simulateur" class="contact-map">
                                    Simulateur
                                </a>
                            </li> -->
                            <li>
                                <a data-toggle="tab" href="#concurrent">
                                    Concurrents
                                </a>
                            </li>
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="offre" class="tab-pane active">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="offre de ${acteurInstance.nom}">  Description de l'offre principale de ${acteurInstance.nom}</h2>
                                    </div>
                                <g:each in="${acteurInstance.produits}">
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group"  title ="produit de financement de ${acteurInstance.nom}">
                                            <text class="col-lg-3">Type de produit</text>
                                            <label class="col-lg-9"><strong>${it.typeProduit.nom}</strong></label>
                                        </div><!-- 
                                        <div class="form-group" title ="description de l'offre de ${acteurInstance.nom}">
                                            <text class="col-lg-3">Description</text>
                                            <p class="col-lg-9">${it.description}</p>
                                        </div>-->
                                        <div class="form-group" title ="coût de ${acteurInstance.nom}">
                                            <text class="col-lg-3">Coût fixe avant opération</text>
                                            <p class="col-lg-9">${it.coutFixeDebut} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût fixe après opération</text>
                                            <p class="col-lg-9">${it.coutFixeFin} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût variable initial</text>
                                            <p class="col-lg-9">${it.coutVarEntreprise} %</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Montant minimal</text>
                                            <p class="col-lg-9">${it.montantMinimum} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Montant maximal</text>
                                            <p class="col-lg-9">${it.montantMaximum} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût récurrent</text>
                                            <p class="col-lg-9">${it.recurrent} %</p>
                                        </div>
                                    </form>
                                </g:each>
                                <g:if test="${ (acteurInstance.publie)}">
                                  
                                   </g:if>
                               <g:else>
                                 <label>Données moyennes indicatives. Nous travaillons à affiner ces données</label>
                               </g:else>
                                </div>
                            </div>
                            <div id="avis" class="tab-pane ">
                                avis d'entrepreneurs
                            </div>
                            <div id="simulateur" class="tab-pane ">
                                  
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2>  Simulateur de crédit bancaire</h2>
                                    </div>

                                  <p>        
                                    Le principal outil de financement d'une PME est le crédit bancaire. Alloratio vous propose gratuitement son module de simulation de crédit.
        
                                  </p>
                      <div id="formulaire">  
                        <form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="nomEmprunt" class="col-sm-4 control-label">Nom du projet</label>
    <div class="input-group col-sm-8">
      <input type="text" class="form-control" id="nomEmprunt" placeholder="Nom" value='${empruntInstance?.nom}'>
    </div>
  </div>
                    
                          
  <div class="form-group">
    <label for="duree" class="col-sm-4 control-label">Durée du crédit (mois) </label>
    <div class="input-group col-sm-8">
      <input type="number" class="form-control" id="duree" placeholder="Mensualités" value="${empruntInstance?.nbMensualite}">
      <div class="input-group-addon">Mois</div>
    </div>
  </div>                     
                          
  <div class="form-group">
    <label for="montantEmprunt" class="col-sm-4 control-label">Montant de l'emprunt</label>
    <div class="input-group col-sm-8">
      <input type="number" step="1000" class="form-control" id="montantEmprunt" placeholder="Montant" value="${empruntInstance?.montant}">
      <div class="input-group-addon">€</div>
    </div>
  </div>
                          
                          
  <div class="form-group">
    <label for="interet" class="col-sm-4 control-label">Taux d'intérêt bancaire</label>
    <div class="input-group col-sm-8">
      <input type="number" step="0.1" class="form-control" id="interet" placeholder="Taux" value="${empruntInstance?.tauxInteret}">
      <div class="input-group-addon">%</div>
    </div>
  </div>
                          
                          
  <div class="form-group">
    <label for="assurance" class="col-sm-4 control-label">Taux assurance crédit</label>
    <div class="input-group col-sm-8">
      <input type="number" step="0.1" class="form-control" id="assurance" placeholder="Taux assurance" value="${empruntInstance?.tauxAssurance}">
      <div class="input-group-addon">%</div>
    </div>
  </div>         
                          
  
  
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-10">
      <a class="btn btn-default" title="amortissement" onclick="javascript:amortissement(this);return false;">Obtenir tableau d'amortissement</a>
    </div>
  </div>
</form>
  </div>
                      
     <div class="col-sm-12" id='amortissement'></div>
                        </div>
                            </div>                          
                            <div id="concurrent" class="tab-pane ">   
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="acteurs ${acteurInstance.typeActeur.nom}">Acteurs proposant des produits similaires</h2>
                                    </div>
                                <div class="prf-box">
                              <g:each in="${concurrents}" status="i" var="acteurInstance">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">${acteurInstance?.slogan}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio" class="btn btn-white">Voir la fiche</a>
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
                    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <h2 title="Financements Startup et PME" class="center" size="2">Comparateur de financement
                               </h2>
                               </br>
                               <form action="${lien}/comparateur/index" method="get" id="searchableForm" name="searchableForm"  class="form-horizontal">
                               
                               <div class="form-group">
                                <label class="col-lg-3 col-sm-3 control-label">Type de produit</label>
                                <div class="col-lg-9">
                                    <select class="form-control" id="typeProduit" name="typeProduit">
                                        <optgroup label="">
                                                  <option value="-1" activate> Tous </option>
                                            <g:each in="${typeProduits1}" status="i" var="item">
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
                                            <g:each in="${secteurs1}" status="i" var="item">
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
                                            <g:each in="${typesProjet1}" status="i" var="item">
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
  
  

                                        <!-- Begin MailChimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
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