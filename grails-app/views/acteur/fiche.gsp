
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
                       <div class="col-md-8">
                           <div class="">
                               <h1 title="${acteurInstance?.nomSEO} - ${acteurInstance?.slogan}">${acteurInstance?.nom}</h1>
                               <span class="text-muted">${acteurInstance?.typeActeur.nom}</span>
                               </br>
                               </br><p align="justify">
                                 <g:if test="${ (acteurInstance.publie)}">
                                   ${raw(acteurInstance?.description)}
                                   </g:if>
                               <g:else>
                                 Cette fiche sur la société ${acteurInstance?.nom} est en cours de construction. Si vous souhaitez être informé de 
                                 la publication de l'analyse de cette entreprise, inscrivez vous !
                               </g:else>
                               </p>
                               </br>
                               
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
                       <div class="col-md-1">                      
                    <div class=" panel-body center-block" align="center">
                      <p align="center">
                             <g:if test="${acteurInstance.linkedin}">
                                   
                         </br>        
                                       <a  rel="nofollow" href="${acteurInstance.linkedin}" title="Linkedin ${acteurInstance?.nomSEO}" rel="external">
                                          
            <span class="mini-stat-icon "><i class="fa fa-linkedin"></i></span>
                                       </a>
                                   
                                     </g:if>
                             
                                     <g:if test="${acteurInstance.facebook}">
                                   
                         </br>        
                                       <a rel="nofollow" href="${acteurInstance.facebook}" title="Facebook ${acteurInstance?.nomSEO}" rel="external">
                                           
            <span class="mini-stat-icon"><i class="fa fa-facebook"></i></span>
                                       </a>
                                   
                                     </g:if>
                                     <g:if test="${acteurInstance.twitter}">
                                   
                         </br>        
                                       <a rel="nofollow" href="${acteurInstance.twitter}" title="Twitter ${acteurInstance?.nomSEO}" rel="external">
                                         
            <span class="mini-stat-icon "><i class="fa fa-twitter"></i></span>
                                       </a>
                                   
                                     </g:if>
                                     <g:if test="${acteurInstance.googleplus}">
                                       <a rel="nofollow" href="${acteurInstance.googleplus}" title="Google+ ${acteurInstance?.nomSEO}"  rel="external">
                                        
                         </br>        
            <span class="mini-stat-icon "><i class="fa fa-google-plus"></i></span>
                                       </a>
                                   
                                     </g:if>
                            
                        </p>
                    </div> 
                    </div>
                    </div>
    
                </section>
                <section class="panel">
 
    <div class="col-md-6">
                <section class="panel">
              <div class="panel-body">
                                    <div class="prf-contacts sttng">
                                         <h2 title="${acteurInstance?.nomSEO} - périmètre"> Secteurs :</h2>
                                    </div>             
                
                                    <p align="justify"> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                
                  <div >       
                        <table class="table  table-hover general-table">
                            <thead>
                            <tr>
                                <th class="hidden-phone"></th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${perimetre}" status="i" var="item">
                            <tr>
                                <td height="20"><a rel="nofollow" href="${lien}/secteur/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME">
                                           ${item.nom}
                                                                                      </a> </td>
                                
                            </g:each>
                                
                            </tr>

                            </tbody>
                        </table>
                              
    </div>
                
            </div>
                </section><section class="panel">
                    
                    <div class="panel-body">
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
                </section>
                    </div>
                <div class="col-md-6">
  <section class="panel">
    
                    <div class="panel-body">
                                    <div class="prf-contacts sttng">
                                        <h2 title="${acteurInstance?.nomSEO} - projet"> Projets :</h2>
                                    </div>            
                                    <p align="justify"> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                                      
                        <table class="table  table-hover general-table">
                            <thead>
                            <tr>
                                <th class="hidden-phone"></th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${typeProjets}" status="i" var="item">
                            <tr>
                                <td height="20"><a rel="nofollow" href="${lien}/financement_projet/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME" >                                           
                                                                      ${item.nom}
                                                                                      </a> </td>
                                
                            </g:each>
                                
                            </tr>

                            </tbody>
                        </table>
                              
    </div>
            </section><section class="panel"> 
              <div class="panel-body">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="${acteurInstance.typeActeur.nom}">Acteurs proposant des produits similaires</h2>
                                    </div> 
                <div id="c-slide" class="carousel slide auto panel-body">
                    <ol class="carousel-indicators out">
                       
                      <g:each in="${concurrents}" status="i" var="acteurInstance">
                        <g:if test="${i>0}">
                        <li class="" data-slide-to="${i}" data-target="#c-slide" title="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio"></li>
                        </g:if>
                        <g:else>
                          <li class="active" data-slide-to="0" data-target="#c-slide" title="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio"></li>
                        </g:else>
                      </g:each>
                    </ol>
                    <div class="carousel-inner">
                      
                      <g:each in="${concurrents}" status="i" var="acteurInstance">
                        <g:if test="${i>0}">
                                   <div class="item text-center">
                        </g:if>
                        <g:else>
                                   <div class="item text-center active">
                          
                        </g:else>
                        <h3>
                          <span class="tm">
                                           <a rel="nofollow" href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span></h3>
                         <div class="tm-avatar">
                                                  <g:if test="${ (acteurInstance.publie)}"></br>
                               <img  src="${request.contextPath}/images/logo/${acteurInstance?.image}"/>
                                   </g:if>
                               <g:else>      
                               </g:else>  </div>
                            <p>${acteurInstance?.slogan}</p></br>
                            <a rel="nofollow" href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio" class="btn btn-white">
                            Voir description
                            </a>
                        </div>
                              </g:each>           
                      
                  
                        
                    </div>
                    <a data-slide="prev" href="#c-slide" class="left carousel-control">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a data-slide="next" href="#c-slide" class="right carousel-control">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
                </div>
                </div>
            </section>
                </div>
<!--
              <div class="col-md-12">

<section class="panel">
                    <div class="panel-body"> 
                               <h2 title="Financements Startup et PME" class="center" size="2">Comparateur de financement
                               </h2>
                               </br>
                                  <div class="position-center">  
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
                </section>
  
                </div>-->
                
                    
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