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
                     
                
    <link href="${request.contextPath}/js/data-tables/DT_bootstrap.css" rel="stylesheet" />
          <style type="text/css">
        #fond2{
          color:white;
          background-color:white;
 background-repeat:no-repeat;
 background-image:url(${request.contextPath}/images/fond.jpg);
        }
        #fond{
          color:black;
          background-color:white;
 background-repeat:no-repeat;
 background-image:url(${request.contextPath}/images/fond2.jpg);
        }
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
   
  
  <ul class="breadcrumb">
    
                <sec:ifLoggedIn>

            
                        <li>
                          <a href="${lien}/user/profilEntreprise"  class=' '>
                             <i class="fa fa-dashboard"></i> Tableau de bord
                          </a>
                        </li>

                </sec:ifLoggedIn>
    <sec:ifNotLoggedIn>
                        <li><a href="${lien}"><i class="fa fa-home"></i> Accueil</a></li>
                        </sec:ifNotLoggedIn>
                        <li><a href="${lien}/comparateur">Comparateur</a></li>
                                
                <sec:ifNotLoggedIn>

            
                        <li>
                          <a href="${lien}/login/inscription"  class='btn btn-danger '>
                            S'inscrire
                          </a>
                        </li>

                </sec:ifNotLoggedIn>
                        
                        
                        </li>
                    </ul>
  
  <div class="row">
    
 <div class="col-lg-3">
                    <section class="panel">
                      
                      <div class="panel-body">
                      
                        
                        <div class="prf-contacts">
                                  
					<g:render template="/formulaire/formComparateur"/>
                            </div>
                        
                        
                      </div>
                      
                    </section>
   
   
   
                    <section class="panel">
                      
                      <div class="panel-body">
                      
					<g:render template="/admin/menu"/>                     
                        
                        
                        
                      </div>
                      
                    </section>
 </div>
 <div class="col-lg-9">
                    <section class="panel">
                      
                      <div class="panel-body">
                      
                        
  
                                     <g:if test="${acteurs}">
                        <div class="prf-contacts">
                          
                                            <h2 title ="Secteurs financés"> <span><i class="fa fa-map-marker"></i></span> Résultats  </h2>
                        
                                    <p> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                                      </div>  
                        <table class="table  table-hover table-responsive general-table">
                            <thead>
                            <tr>
                                <th class="hidden-xs hidden-sm"></th>
                                <th></th>
                                <th class="hidden-xs hidden-sm">Type</th>
                                <th>Montant</th>
                                <th>Taux appliqué</th>
                                <th class="hidden-xs hidden-sm">Horizon</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${acteurs}">
                            <tr>
                                <td height="80" class="hidden-xs hidden-sm">
                            <g:if test="${ (it.publie)}">
                               <img  src="${request.contextPath}/images/logo/${it?.image}" alt="${it?.nom}" height="50"/>
                                   </g:if></td>
                                <td>${it.nom} </td>
                                <td class="hidden-xs hidden-sm"><g:each in="${it.produits}" var="item">
                                  
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
                                <td class="hidden-xs hidden-sm">d</td>
                                <td>
                                  <a href="${lien}/fiche/${it.id}/${it.nomSEO}" title ="${it.nomSEO}" class="btn btn-white">
                                    En savoir plus
                                  </a>
                                </td>
                            </tr>
                              </g:each>

                            </tbody>
                        </table>
                                     </g:if>
  <g:else>
                        <div class="prf-contacts">
                          <h2 title ="Secteurs financés"> <span><i class="fa fa-map-marker"></i></span> Résultats  </h2>
                        
                                    <p> Alloratio met à jour régulièrement sa base de données pour vous aider à trouver
                                      le meilleur financement pour votre Entreprise.
                                      Votre requête ne donne aucun résultat. Vous souhaitez qu'on jette un oeil à votre projet? Contactez nous !</p>
                         
                    </div>
  </g:else>
                    
                        
                        
                      </div>
                      
                    </section>
 </div>
    
  </div>
  
            

<script type="text/javascript" src="${request.contextPath}/js/data-table/DT_bootstrap.js"></script>

<script type="text/javascript" src="${request.contextPath}/js/data-table/jquery.dataTables.js"></script>

  </body>
</html>
