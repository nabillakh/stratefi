
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
                               <h1 title="Financement des PME et startup" class="center">Guichet unique du financement des entreprises</h1>
                               <span class="text-muted">Pour <strong>Startup</strong> et <strong>PME</strong></span> </br>
                               <p align="justify"></br>
                                 Avec Alloratio, vous n'êtes plus un risque crédit, mais une <strong>opportunité</strong> !.
                               </p> 
                               
                           </div>
                           </div>
      </br>
                           </div>
            
          </section>
        
        
          <section class="panel">
                    <div class="panel-body">
                                  <div class="col-lg-4 col-sm-4">   
                    <aside class="profile-nav alt">
                            <section class="panel">
                                <div class="user-heading alt">
                                    <h1 style="color:black" title="formation finance">Analyse financière</h1>
                                    <p>Préparation</p>
                                </div>
                                    <p align="justify">Avant tout financement, vos partenaires financiers évaluent la santé financière de votre entreprise. 
                                      Nous vous proposons <strong>gratuitement</strong> une photographie de votre entreprise en 48h.
                                      Anticipez et découvrez comment vos partenaires vous évalueront.
                                    </p>
                                    <center>
                                      <g:link action="analyseFi" controller="admin" class="btn btn-info" title="formation financement"><i class="fa fa-eye"></i> Evaluez moi ! </g:link>
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
                              
                                    <p align="justify">Vous passez beaucoup de temps à chercher des solutions de financement?
                                      Vous souhaitez pouvoir choisir simplement la source de financement la plus adaptée à votre 
                                      PME ( coût, qualité et temps) ? Alors essayez dès maintenant notre comparateur.
                                    </p>
                                    <center>
                                      <g:link action="listeFinancement" controller="comparateur" class="btn btn-info" title="comparateur financement"><i class="fa fa-eye"></i>  Voir </g:link>
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

                                    <p align="justify">Fini la solitude du dirigeant face à ses problèmes de trésorerie, Alloratio développe pour vous un service d'échange collaboratif de bonnes pratiques de gestion de trésorerie. Profitez du REX de vos homologues et améliorez facilement votre trésorerie!
                                    </p>
                                    <center>
                                      <g:link action="bonnesPratiques" controller="admin" class="btn btn-danger" title="pratique financement"><i class="fa fa-eye"></i>  Voir </g:link>
                                    </center>

                            </section>
                        </aside>
                                    
                           </div>
                    </div>
                </section>
        
        
               
	</body>
</html>
