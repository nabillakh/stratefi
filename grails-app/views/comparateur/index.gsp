<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup pour les projets </title>
                <meta name="description" content="${acteurs.size()} solutions de Financement des PME et startup pour projets de type : " />
                <meta name="keywords" content=" financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire" />
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  <body>
    
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
    
          <section class="panel">
                    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <h1 title="Financements Startup et PME" class="center" size="2">Comparateur de financement
                               </h1>
                               </br>
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
                                          <input type="submit" value="Recherche"   class="btn btn-danger"/>
                                        </div>
                                      </div>
                                 
                              </form>
                           </div>
                           </div>
                    </div>
                </section>
    <section class="panel">    
      
    <div class="panel-body">
    <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Secteurs financés">Résultats : </h2>
                                    <p> En cliquant sur le lien associé à chaque acteur du financement des entreprises, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p>
                                      
                              <g:each in="${acteurs}">
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="${it.nomSEO}">
                                                    ${fieldValue(bean: it, field: "nom")}
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                  
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${it.id}/${it.nomSEO}" title ="${it.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                    </div>
                                </div>
                                </div>
    </section> 
    
    </div>
    
  </body>
</html>
