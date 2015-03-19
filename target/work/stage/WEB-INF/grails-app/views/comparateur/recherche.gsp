

<%@ page import="stratefi.comparateur.Acteur" %>
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Financement des PME / startup </title>
                <meta name="description" content=" solutions de Financement des PME et Startup" />
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
  
                        
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
	<body>
          <section class="panel"> 
    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <form action="comparateur/recherche" method="get" id="searchableForm" name="searchableForm" >
                                    <h1 title="Financements Startup et PME" class="center" size="2">Résultats pour "${q}"
                               </h1>
                               <span class="text-muted">Pour Startup et PME</span> </br></br>
                               
                                    <div class="form-group">
                                        <label class="control-label"></label>
                                        <div class="col-sm-12">
                                          <input type="text" name="q" size="50" id="q"  value="${q}"class="form-control" placeholder="Saisir des mots clés. Ex : levée de fonds, crédit énergie"/> </br>
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
                        <div class="tab-content tasi-tab">
                          <g:if test="${searchResult?.results}"> <!-- or you could use test="${searchResult?.results}" -->
    <g:set var="total" value="${(searchResult.total)}" />
    <span> ${total} résultats</span>
    
</g:if> <g:else>
    <g:set var="total" value="${0}" />
</g:else>
        
   
                          <g:if test="${total == 0}">
                           Aucun résultat ne correspond à votre recherche
                          </g:if>
                          <g:if test="${acteurs}">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="acteurs">Acteurs du financement</h2>
                                    </div>
                                <div class="prf-box">
                              <g:each var="acteurInstance" in="${acteurs}">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">${acteurInstance?.slogan}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                        </div>
                                                                
                            </div>
                          </g:if>
                          <g:if test="${produits}">
                          <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="solutions de financement">Produit de financement</h2>
                                    </div>
                                <div class="prf-box">
                              <g:each var="acteurInstance" in="${produits}">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nom}" title ="Allez sur la fiche de ${acteurInstance.nom}">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">${acteurInstance?.nom}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nom}" title ="Allez sur la fiche de ${acteurInstance.nom}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                        </div>
                                                                
                            </div> </g:if>
                          
                          <g:if test="${secteurs}">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="acteurs">Secteur d'activité</h2>
                                    </div>
                                <div class="prf-box">
                              <g:each var="acteurInstance" in="${secteurs}">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">${acteurInstance?.nom}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                        </div>
                                                                
                            </div> </g:if>
                          
                          
                          <g:if test="${typeProduits}">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="acteurs">Famille de produit</h2>
                                    </div>
                                <div class="prf-box">
                              <g:each var="acteurInstance" in="${typeProduits}">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nom}" title ="Allez sur la fiche de ${acteurInstance.nom}">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">${acteurInstance?.nom}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="Allez sur la fiche de ${acteurInstance.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                        </div>
                                                                
                            </div> </g:if>
                                  
                                  
                                        </div>
                                                                
                            </div>
           
                </section>
          	<!-- Begin MailChimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
</style>


               
	</body>
</html>
