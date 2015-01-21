
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
          color:red;
          background-color:white;
        }
	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
                
  </head>
	<body>
          <section class="panel">    

                   <div class="col-md-3">
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
                    <!--<div class="panel-body profile-information"  style="background-image: url(../images/test.jpg); height: 500px; width: 800px; opacity: 0.1; border: 1px solid black;"> -->
                    <div class="panel-body profile-information col-md-9">
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
    <section class="panel">
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
    </section> 
          	<!-- Begin MailChimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
</style>

               
	</body>
</html>
