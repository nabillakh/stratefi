<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup dans le secteur ${secteur.nom}</title>
                <meta name="description" content="${acteurs.size()} solutions de Financement des PME et startup du secteur ${secteur.nom}" />
                <meta name="keywords" content="${secteur.nomSEO}, financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire" />
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  <body>
    <section class="panel">    

    
    
                    <div class="panel-body profile-information">
                               <h1 title="Financements Startup et PME du secteur ${secteur.nom}">${acteurs.size()} moyens de financement du secteur ${secteur.nom}</h1>
                               <span class="text-muted"></span>
                       <div class="col-md-3">
                           
                       </div>
                       <div class="col-md-6">
                           <div class="">
                               </br><p>
                                  Alloratio vous propose ici gratuitement la liste des acteurs qui financent les PME et startup du secteur <strong>${secteur.nom}</strong>
                               </p></br>
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
                                        <h2>Financements du secteur : ${secteur.nom}</h2>
                                    </div>
                                    <p> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou si les descriptions vous semblent 
                                    incomplètes, n'hésitez pas à nous contacter.</p>
                                    <table class="table  table-hover general-table">
                            <thead>
                            <tr>
                                <th> Nom </th>
                                <th class="hidden-phone">Slogan</th>
                                <th>Fiche</th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${acteurs}" status="i" var="acteurInstance">
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
    </div>
    
  </body>
</html>
