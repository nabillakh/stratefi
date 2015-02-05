<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup pour les projets ${type.nom}</title>
                <meta name="description" content="${acteurs.size()} solutions de Financement des PME et startup pour projets :  ${type.nom}" />
                <meta name="keywords" content="${type.nomSEO}, financement, credit, levee de fonds, crowdfunding, PME, startup" />
                <g:if test="${type?.publie}">
                <meta name="robots" content="index">
                </g:if>
                <g:else>
                  <meta name="robots" content="noindex">    
                </g:else>
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  <body>
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  <section class="panel">
            <div class="wdgt-row">
                <img src="${request.contextPath}/images/fond4.jpg" height="183" alt="">
                <div class="wdt-head">
                  <h1 title="Financements Startup et PME pour projets ${type.nom}">${acteurs.size()} solutions de financement pour : ${type.nom}</h1>
                               </div>
            </div>

        </section>
    <section class="panel">    

    
    
                    <div class="panel-body profile-information">
                               <span class="text-muted"></span>
                               
                       <div>
                           <div class="">
                               </br><p>
                                  Alloratio vous propose ici gratuitement la liste des acteurs qui financent les PME et startup pour les projets de type : <strong>${type.nom}</strong>.
                              En cliquant sur le lien associé à chaque acteur du financement des <strong>PME</strong> et <strong>startup</strong>, vous pourrez 
                                    accéder à sa description ainsi qu'aux détails de son offre (quoi? combien? etc.) Si cette liste ou les descriptions vous semblent 
                                    incomplètes ou erronées, n'hésitez pas à nous contacter.</p> </br>
                           </div>
                       </div>
                    </div>
    </section> 
    <section class="panel">
    <div class="panel-body">
                                  <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title="${type.nom} PME startup">Moyens de financement pour  ${type.nom}</h2>
                                    </div>
                                    
                                    <div class="prf-box">
                              <g:each in="${acteurs}" status="i" var="acteurInstance">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                    <g:if test="${ (acteurInstance.publie)}">
                               <img  src="${request.contextPath}/images/logo/${acteurInstance?.image}"/>
                                   </g:if>
                               <g:else>                               
                               </g:else> </div>
                                                </div>
                                                <div class="col-md-3 col-xs-3">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO}">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-5 col-xs-5" title="${acteurInstance?.slogan}">
                                                    <span class="tm">${acteurInstance?.slogan}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                        </div>
                                </div>
    </section>
<section class="panel">
                    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <h1 title="Financements Startup et PME" class="center" size="2">Comparateur de financement
                               </h1>
                               </br>
                               <form action="comparateur/index" method="get" id="searchableForm" name="searchableForm"  class="form-horizontal">
                               
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
    </div>
    
  </body>
</html>
