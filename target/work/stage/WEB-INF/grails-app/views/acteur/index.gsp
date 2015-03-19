
<%@ page import="stratefi.comparateur.Acteur" %>
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup </title>
                <meta name="description" content="${acteurInstanceList.size()} solutions de Financement des PME et Startup" />
                <meta name="keywords" content="financement, crédit, levée de fonds, crowdfunding, PME, startup" />
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
	<body>
          
          <section class="panel">    

    
    
                    <div class="panel-body profile-information">
                       <div class="col-md-3">
                           
                       </div>
                       <div class="col-md-6">
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
                       <div class="col-md-3">
                       </div>
                                
		
                    </div>
            <div id="list-acteur" class="adv-table">
                      
                  <div class="row">
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
          	
               
	</body>
</html>
