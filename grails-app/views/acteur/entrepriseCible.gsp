<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup dans le secteur ${secteur.nom}</title>
                <meta name="description" content="${acteurs.size()} solutions de Financement des PME et startup du secteur ${secteur.nomSEO}" />
                <meta name="keywords" content="${secteur.nomSEO}, financement, credit, levee de fonds, crowdfunding, PME, startup" />
                <g:if test="${secteur?.publie}">
                <meta name="robots" content="index">
                </g:if>
                <g:else>
                  <meta name="robots" content="noindex">    
                </g:else>
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

    
    
                    <div class="panel-body profile-information">
                               <h1 title="Financements Startup et PME du secteur ${secteur.nom}">${acteurs.size()} moyens de financement du secteur ${secteur.nom}</h1>
                               <span class="text-muted"></span>
                       <div class="">
                           <div class="">
                               </br><p>
                                  Alloratio vous propose ici gratuitement la liste des acteurs qui financent les PME et startup du secteur : <strong>${secteur.nom}</strong>.
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
                                        <h2 title=" PME startup ${secteur.nom}">Financements du secteur : ${secteur.nom}</h2>
                                    </div>   <div class="prf-box">
                              <g:each in="${acteurs}" status="i" var="acteurInstance">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}" title="${acteurInstance.nomSEO}"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO}">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4" title="${acteurInstance?.slogan}">
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
    </div>
    
  </body>
</html>
