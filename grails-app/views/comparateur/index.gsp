<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup </title>
                <meta name="description" content="Comparateur des solutions de Financement des PME et startup" />
                <meta name="keywords" content="financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire" />
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  <body>
    <section class="panel">    

    
    
                    <div class="panel-body profile-information">
                       <div class="col-md-3">
                           
                       </div>
                       <div class="col-md-6">
                           <div class="">
                               <h1 title="comparateur financements pour Startup et PME">Comparateur des moyens de financement</h1>
                               <span class="text-muted">{acteurInstance?.typeActeur.nom}</span>
                               </br><p>
                                  Alloratio propose gratuitement un comparateur des différents moyens de financement des PME et des startup.
                                  Il existe plusieurs types de financement :
                                                           <div class="panel-body">
                        <ul>
                            <li>
                                Fonds propres
                                <ul>
                                    <li>
                                        Capital social
                                    </li>
                                    <li>
                                        Les comptes courants d'associés
                                    </li>
                                    <li>
                                        Les apports de sociétés de capital-risque
                                    </li>
                                    <li>
                                        Les subventions d'investissement
                                    </li>
                                </ul>
                            </li>
                            <li>
                                Financements externes
                                <ul>
                                    <li>
                                        L'emprunt bancaire
                                    </li>
                                    <li>
                                        L'emprunt aidé
                                    </li>
                                    <li>
                                        Le crédit-bail
                                    </li>
                                    <li>
                                       La location financière
                                    </li>
                                    <li>
                                       Le découvert autorisé
                                    </li>
                                    <li>
                                       Le crédit fournisseurs
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                               </p></br>
                               <a href="{acteurInstance?.url}" class="btn btn-primary" title="site web de acteurInstance?.nomSEO}">Lancer une recherche</a>
                           </div>
                       </div>
                       <div class="col-md-3">
                       </div>
                    </div>
    </section> 
    <section class="panel">
    <div class="panel-body">
                                  <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2>  Description de l'offre de {acteurInstance.nom}</h2>
                                    </div>
                                    <form role="form" class="form-horizontal bucket-form">
                                      <div class="form-group">
                                        <label class="col-sm-3 control-label">Montant recherché</label>
                                        <div class="col-sm-6">
                                          <input type="text" class="form-control">
                                        </div>
                                      </div>
                                      <div class="form-group">
                                        <label class="col-sm-3 control-label">Type de projet</label>
                                        <div class="col-sm-6">
                                          <input type="text" class="form-control">
                                        </div>
                                      </div>
                                      <div class="form-group">
                                        <label class="col-sm-3 control-label">Objectif du projet</label>
                                        <div class="col-sm-6">
                                          <input type="text" class="form-control">
                                        </div>
                                      </div>
                                      <div class="form-group">
                                        <label class="col-sm-3 control-label">Objectif du projet</label>
                                        <div class="col-sm-6">
                                          <input type="text" class="form-control">
                                        </div>
                                      </div>
                                      
                                      
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <button type="submit" class="btn btn-danger">Lancer</button>
                                </div>
                            </div>
                                      
                                    </form>
                                </div>
    </section> 
    </div>
    
<script>
    $(function ()
    {
        $("#wizard").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft"
        });

        $("#wizard-vertical").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft",
            stepsOrientation: "vertical"
        });
    });


</script>
  </body>
</html>
