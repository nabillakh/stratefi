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
                
                <meta name="description" content="${acteurs.size()} solutions de Financement des PME et startup pour projets de type : " />
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
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  
  
  <section class="panel">
            <div class="wdgt-row">
                <img src="${request.contextPath}/images/fond4.jpg" height="140" alt="Comparateur de financement">
                <div class="wdt-head">
                  <h1>Comparateur de financement pour PME et startup</br></h1>
                  <span> Trouvez rapidement les financements les plus adaptés à votre <strong>entreprise</strong></span></br>
                                 </div>
            </div>

            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-3">
                      
                    </div>
                    <div class="col-md-9 pull-right">
                        <ul class="">
                            <li>
                                <h2>Type de Projets</h2>
                                <i class="text-success">${typesProjet.size()}</i>
                            </li>
                            <li>
                                <h2>Secteurs</h2>
                                <i class="text-success">${secteurs.size()}</i>
                            </li>
                            <li>
                                <h2>Types de produit</h2>
                                <i class="text-success">${typeProduits.size()}</i>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

        </section>
  
          <section class="panel">
                    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <form action="${lien}/comparateur/index" method="get" id="searchableForm" name="searchableForm"  class="form-horizontal">
                               
                               <div class="form-group">
                                <label class="col-lg-3 col-sm-3 control-label">Type de produit</label>
                                <div class="col-lg-9">
                                    <select class="form-control" id="typeProduit" name="typeProduit">
                                        <optgroup label="">
                                                  <option value="-1" activate> Tous </option>
                                            <g:each in="${typeProduits}" status="i" var="item">
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
                                            <g:each in="${secteurs}" status="i" var="item">
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
                                            <g:each in="${typesProjet}" status="i" var="item">
                                                  <option value="${item.id}">${item.nom}</option>
                                                </g:each>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-5"></label>
                                        <div class="">
                                          <input type="submit" value="Recherche"   class="btn btn-info"/>
                                        </div>
                                      </div>
                                 
                              </form>
                           </div>
                           </div>
                    </div>
                </section>
          
  
                                     <g:if test="${acteurs}">
    <section class="panel">
                      <div class="panel-body"><h2 title ="Secteurs financés">Résultats : </h2>
                                    <p> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                                      
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
        </section>
                                     </g:if>
  <g:else>
    <section class="panel">
                      <div class="panel-body"><h2 title ="Secteurs financés">Aucun résultat : </h2>
                                    <p> Alloratio met à jour régulièrement sa base de données pour vous aider à trouver
                                      le meilleur financement pour votre Entreprise.
                                      Votre requête ne donne aucun résultat. Vous souhaitez qu'on jette un oeil à votre projet? Contactez nous !</p>
                         
                    </div>
        </section>
  </g:else>
    </div>
    
  </body>
</html>
