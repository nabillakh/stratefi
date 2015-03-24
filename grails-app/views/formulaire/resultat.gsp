<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup pour les projets </title>
                
                <meta name="robots" content="noindex">
                
                <meta name="description" content="{acteurs.size()} solutions de Financement des PME et startup pour projets de type : " />
                <meta name="keywords" content=" financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire" />
                
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
     <g:set var="lien" value="http://comparateur.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  
  
     
     <section class="panel">
       <g:set var="phrase" value="Comparateur de financement pour PME et startup" />
          <g:render template="/user/header"/>
            
     </section>  
  
          <section class="panel">
                    <div class="panel-body">
                    <div class="col-sm-2">
                      <div class="">
                        <div class="prf-contacts">
                                  <g:render template="/formulaire/formComparateur"/>
                               
                          
                           </div>
                           </div>
                    </div>
          
                      <div class="col-sm-1"></div>
  
                                     <g:if test="${acteurs}">
                      <div class="col-sm-8">
                      <div class="">
                        <div class="prf-contacts">
                          
                                            <h2 title ="Secteurs financés"> <span><i class="fa fa-map-marker"></i></span> Résultats  </h2>
                        
                                    <p> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                                      </div>  
                        <table class="table  table-hover general-table">
                            <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th class="hidden-phone">Type</th>
                                <th>Montant</th>
                                <th>Taux appliqué</th>
                                <th>Horizon</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${acteurs}">
                            <tr>
                                <td height="80">
                            <g:if test="${ (it.publie)}">
                               <img  src="${request.contextPath}/images/logo/${it?.image}" alt="${it?.nom}" height="50"/>
                                   </g:if></td>
                                <td>${it.nom} </td>
                                <td><g:each in="${it.produits}" var="item">
                                  
                                    <span class="label label-default">
                                          ${item.typeProduit.nom}
                                    </span>
                                  
                            </g:each>
                              </td>
                                <td><g:each in="${it.produits}" var="item">
                                  
                                      ${item.getMontantPhrase()}
                                  
                                  
                            </g:each>
                              </td>
                                <td><g:each in="${it.produits}" var="item">
                                  
                                      ${item.getTauxPhrase()}
                                  
                                  
                            </g:each></td>
                                <td>d</td>
                                <td>
                                  <a href="${lien}/fiche/${it.id}/${it.nomSEO}" title ="${it.nomSEO}" class="btn btn-white">
                                    En savoir plus
                                  </a>
                                </td>
                            </tr>
                              </g:each>

                            </tbody>
                        </table>
                    </div>
                    </div>
                    </div>
        </section>
                                     </g:if>
  <g:else>
                      <div class="col-sm-8">
                      <div class="">
                        <div class="prf-contacts">
                          <h2 title ="Secteurs financés"> <span><i class="fa fa-map-marker"></i></span> Résultats  </h2>
                        
                                    <p> Alloratio met à jour régulièrement sa base de données pour vous aider à trouver
                                      le meilleur financement pour votre Entreprise.
                                      Votre requête ne donne aucun résultat. Vous souhaitez qu'on jette un oeil à votre projet? Contactez nous !</p>
                         
                    </div>
                    </div>
                    </div>
        </section>
  </g:else>
    </div>
    
  </body>
</html>
