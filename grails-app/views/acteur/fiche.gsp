
<!DOCTYPE html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>${acteurInstance?.nom} - Présentation d'un acteur du ${acteurInstance?.typeActeur.nom}</title>
                <meta name="description" content="${acteurInstance?.nomSEO} - ${acteurInstance?.typeActeur.nom}" />
                <meta name="keywords" content="financement, ${acteurInstance?.nomSEO}, ${acteurInstance?.typeActeur.nom}, PME, startup" />
                <g:if test="${acteurInstance?.publie}">
                <meta name="robots" content="index">
                </g:if>
                <g:else>
                  <meta name="robots" content="noindex">    
                </g:else>
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  <section class="panel"> 
    <div class="panel-body">
                                  <div class="position-center">   
                    <div class="">
                               <form action="${lien}/comparateur/recherche" method="get" id="searchableForm" name="searchableForm" class="form-inline">
                                    
                                    <div class="form-group">
                                        <label class="control-label"></label>
                                        <div class="col-sm-12">
                                          <input type="text" name="q" size="50" id="q"  value="${acteurInstance.nom}"class="form-control" placeholder="Saisir des mots clés. Ex : levée de fonds, crédit énergie"/> </br>
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

    
                    <div class="panel-body profile-information">
                       <div class="col-md-3">
                           <div class="profile-pic text-center">
                        <!--       <img src="${request.contextPath}/images/test.jpg" title="${acteurInstance?.nomSEO}"/> -->
                             
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}"/>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <div class="profile-desk">
                               <h1 title="${acteurInstance?.nomSEO} - ${acteurInstance?.typeActeur.nom}">${acteurInstance?.nom}</h1>
                               <span class="text-muted">${acteurInstance?.typeActeur.nom}</span>
                               <span class="tm">${acteurInstance?.slogan}</span>
                               </br><p>
                                   ${acteurInstance?.description.decodeHTML()}
                                 
                               </p></br>
                               <a href="${acteurInstance?.url}" class="btn btn-danger" title="${acteurInstance?.nomSEO}" rel="external">Consulter ce site</a>
                           </div>
                       </div>

                       <div class="col-md-3">
                           <div class="profile-statistics">
                               <h2 title="${acteurInstance?.nomSEO} - projet"> Projets :</h2>
                                     <g:each in="${typeProjets}" status="i" var="item">
                                       <g:if test="${ ( i <  4)}">
                                         <li>
                                             <a href="${lien}/financement_projet/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME" >                                           
                                                                      ${item.nom}
                                                                                      </a>
                            </li>
                                 </g:if>
                               </g:each>
                               <h2 title="${acteurInstance?.nomSEO} - périmètre"> Secteurs :</h2>
                                 <g:each in="${perimetre}" status="i" var="item">
                                       <g:if test="${ ( i <  4)}">
                                         <li>
                                           <a href="${lien}/secteur/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME">
                                           ${item.nom}
                                                                                      </a>
                            </li>
                                 </g:if>
                               </g:each>
                           
                             <!--  <h2 title="coût des projets sur ${acteurInstance?.nomSEO}">5,61,240 €</h2>
                               <p>Coût financement de 50 000 €</p> -->
                               <ul>
                                     <g:if test="${acteurInstance.facebook}">
                                   <li>
                                       <a href="${acteurInstance.facebook}" title="Page Facebook de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-facebook"></i>
                                       </a>
                                   </li>
                                     </g:if>
                                     <g:if test="${acteurInstance.twitter}">
                                   <li>
                                       <a href="${acteurInstance.twitter}" title="Timeline Twitter de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-twitter"></i>
                                       </a>
                                   </li>
                                     </g:if>
                                     <g:if test="${acteurInstance.googleplus}">
                                   <li>
                                       <a href="${acteurInstance.googleplus}" title="Page google+ de ${acteurInstance?.nomSEO}"  rel="external">
                                           <i class="fa fa-google-plus"></i>
                                       </a>
                                   </li>
                                     </g:if>
                                     <g:if test="${acteurInstance.linkedin}">
                                   <li>
                                       <a href="${acteurInstance.linkedin}" title="Timeline Linkedin de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-linkedin"></i>
                                       </a>
                                   </li>
                                     </g:if>
                                   
                               </ul>
                           </div>
                       </div>
                    </div>
                </section>
  
                <section class="panel">
                    <header class="panel-heading tab-bg-dark-navy-blue">
                        <ul class="nav nav-tabs nav-justified ">
                            <li class="active" title="Offre de : ${acteurInstance?.nomSEO}">
                                <a data-toggle="tab" href="#offre">
                                    Offre
                                </a>
                            </li>
                         <!--   <li title="Ce que pensent les entrepreneurs de ${acteurInstance?.nomSEO}">
                                <a data-toggle="tab" href="#avis" class="contact-map">
                                    Avis d'entrepreneurs
                                </a>
                            </li> 
                            <li>
                                <a data-toggle="tab" href="#simulateur" class="contact-map">
                                    Simulateur
                                </a>
                            </li> -->
                            <li>
                                <a data-toggle="tab" href="#concurrent">
                                    Concurrents
                                </a>
                            </li>
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="offre" class="tab-pane active">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="offre de ${acteurInstance.nom}">  Description de l'offre principale de ${acteurInstance.nom}</h2>
                                    </div>
                                <g:each in="${acteurInstance.produits}">
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group"  title ="produit de financement de ${acteurInstance.nom}">
                                            <text class="col-lg-3">Type de produit</text>
                                            <label class="col-lg-9"><strong>${it.typeProduit.nom}</strong></label>
                                        </div><!-- 
                                        <div class="form-group" title ="description de l'offre de ${acteurInstance.nom}">
                                            <text class="col-lg-3">Description</text>
                                            <p class="col-lg-9">${it.description}</p>
                                        </div>-->
                                        <div class="form-group" title ="coût de ${acteurInstance.nom}">
                                            <text class="col-lg-3">Coût fixe avant opération</text>
                                            <p class="col-lg-9">${it.coutFixeDebut} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût fixe après opération</text>
                                            <p class="col-lg-9">${it.coutFixeFin} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût variable initial</text>
                                            <p class="col-lg-9">${it.coutVarEntreprise} %</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Montant minimal</text>
                                            <p class="col-lg-9">${it.montantMinimum} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Montant maximal</text>
                                            <p class="col-lg-9">${it.montantMaximum} €</p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût récurrent</text>
                                            <p class="col-lg-9">${it.recurrent} %</p>
                                        </div>
                                    </form>
                                </g:each>
                                </div>
                            </div>
                            <div id="avis" class="tab-pane ">
                                avis d'entrepreneurs
                            </div>
                            <div id="simulateur" class="tab-pane ">
                                  
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2>  Simulateur de crédit bancaire</h2>
                                    </div>

                                  <p>        
                                    Le principal outil de financement d'une PME est le crédit bancaire. Alloratio vous propose gratuitement son module de simulation de crédit.
        
                                  </p>
                      <div id="formulaire">  
                        <form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="nomEmprunt" class="col-sm-4 control-label">Nom du projet</label>
    <div class="input-group col-sm-8">
      <input type="text" class="form-control" id="nomEmprunt" placeholder="Nom" value='${empruntInstance?.nom}'>
    </div>
  </div>
                    
                          
  <div class="form-group">
    <label for="duree" class="col-sm-4 control-label">Durée du crédit (mois) </label>
    <div class="input-group col-sm-8">
      <input type="number" class="form-control" id="duree" placeholder="Mensualités" value="${empruntInstance?.nbMensualite}">
      <div class="input-group-addon">Mois</div>
    </div>
  </div>                     
                          
  <div class="form-group">
    <label for="montantEmprunt" class="col-sm-4 control-label">Montant de l'emprunt</label>
    <div class="input-group col-sm-8">
      <input type="number" step="1000" class="form-control" id="montantEmprunt" placeholder="Montant" value="${empruntInstance?.montant}">
      <div class="input-group-addon">€</div>
    </div>
  </div>
                          
                          
  <div class="form-group">
    <label for="interet" class="col-sm-4 control-label">Taux d'intérêt bancaire</label>
    <div class="input-group col-sm-8">
      <input type="number" step="0.1" class="form-control" id="interet" placeholder="Taux" value="${empruntInstance?.tauxInteret}">
      <div class="input-group-addon">%</div>
    </div>
  </div>
                          
                          
  <div class="form-group">
    <label for="assurance" class="col-sm-4 control-label">Taux assurance crédit</label>
    <div class="input-group col-sm-8">
      <input type="number" step="0.1" class="form-control" id="assurance" placeholder="Taux assurance" value="${empruntInstance?.tauxAssurance}">
      <div class="input-group-addon">%</div>
    </div>
  </div>         
                          
  
  
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-10">
      <a class="btn btn-default" title="amortissement" onclick="javascript:amortissement(this);return false;">Obtenir tableau d'amortissement</a>
    </div>
  </div>
</form>
  </div>
                      
     <div class="col-sm-12" id='amortissement'></div>
                        </div>
                            </div>                          
                            <div id="concurrent" class="tab-pane ">   
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2  title ="acteurs ${acteurInstance.typeActeur.nom}">Acteurs proposant des produits similaires</h2>
                                    </div>
                                <div class="prf-box">
                              <g:each in="${concurrents}" status="i" var="acteurInstance">
                                            <div class=" wk-progress tm-membr">
                                                <div class="col-md-2 col-xs-2">
                                                    <div class="tm-avatar">
                                                        
                               <img  src="${request.contextPath}/image/showPayload/${acteurInstance?.id}"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                    <span class="tm">${acteurInstance?.slogan}</span>
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                              </g:each>
                                        </div>
                                                                
                            </div>
                            </div>
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
                               <form action="${lien}/comparateur/index" method="get" id="searchableForm" name="searchableForm"  class="form-horizontal">
                               
                               <div class="form-group">
                                <label class="col-lg-3 col-sm-3 control-label">Type de produit</label>
                                <div class="col-lg-9">
                                    <select class="form-control" id="typeProduit" name="typeProduit">
                                        <optgroup label="">
                                                  <option value="-1" activate> Tous </option>
                                            <g:each in="${typeProduits1}" status="i" var="item">
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
                                            <g:each in="${secteurs1}" status="i" var="item">
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
                                            <g:each in="${typesProjet1}" status="i" var="item">
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
  
  

