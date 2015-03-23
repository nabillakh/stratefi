
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
                
                
    <link href="${request.contextPath}/js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.css" rel="stylesheet" />
    <link href="${request.contextPath}/js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.skinFlat.css" rel="stylesheet"/>

    
  </head>
  
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
 
 
     <section class="panel">
       <g:set var="phrase" value="Description de ${acteurInstance?.nom}" />
          <g:render template="/user/header"/>
            
     </section>  
  <section class="panel">    
                    <div class="panel-body">
                       <div class="col-md-2">
                          <div class="prf-contacts">
                           <h2 title ="${acteurInstance?.nom}"><span><i class="fa fa-anchor"></i></span> ${acteurInstance?.nom}</h2>
                           
                               
                         </br>                  
                         </br>
                         </div>
                         <ul class="nav nav-stacked nav-pills">
                             <li class="active" title="Qui est ${acteurInstance?.nom}">
                                <a data-toggle="tab" href="#qui">
                                  Description 
                                </a>   
                             </li>
                             <li title="Qui est ${acteurInstance?.nom}">
                                <a data-toggle="tab" href="#quoi">
                                  Périmètre
                                </a>   
                             </li>
                             <li title="Qui est ${acteurInstance?.nom}">
                                <a data-toggle="tab" href="#ou">
                                  Modalités
                                </a>   
                             </li>
                             <li title="Qui est ${acteurInstance?.nom}">
                                <a data-toggle="tab" href="#comment">
                                  Concurrents
                                </a>   
                             </li>
                             
                           </ul>
                       </div>
                      <div class="col-md-1"></div>
                      <div class="col-md-9">
                        <div class="tab-content tasi-tab">
                            <div id="qui" class="tab-pane active">
                                
                        <div class="prf-contacts">
                           <h2 title ="${acteurInstance?.nom}"><span><i class="fa fa-map-marker"></i></span> Qui est ${acteurInstance?.nom} ? </h2>
                        </div>
                       <div class="col-md-3 profile-information">
                           <div class="profile-pic text-center">
                        <!--       <img src="${request.contextPath}/images/test.jpg" title="${acteurInstance?.nomSEO}"/> -->
                             <g:if test="${ (acteurInstance.publie)}">
                               <img  src="${request.contextPath}/images/logo/${acteurInstance?.image}" alt="${acteurInstance?.nom}"/>
                                   </g:if>
                               <g:else>
                               <img  src="${request.contextPath}/images/logo.png"/>
                               
                               </g:else>
                           </div>
                       </div>
                       <div class="col-md-9">
                           <div class="profile-desk">
                             </br>
                               </br><p>
                                 <g:if test="${ (acteurInstance.publie)}">
                                   ${acteurInstance?.description.decodeHTML()}
                                   </g:if>
                               <g:else>
                                 Cette fiche sur la société ${acteurInstance?.nom} est en cours de construction. Si vous souhaitez être informé de 
                                 la publication de l'analyse de cette entreprise, inscrivez vous !
                                 </br>
                                 <center>
                               <a href="${lien}/login/inscription"class="btn btn-info" title="S'inscrire sur Alloratio, partenaire de votre financement">
                                    S'inscrire
                                </a>
                                 </center>
                               </g:else>
                               </p>
                           </div>
                       </div>
                                <g:if test="${ (acteurInstance.publie)}">
                                  <center><div class="btn-group">
                              <g:if test="${ (acteurInstance.publie)}">
                                   
                               <a href="${acteurInstance?.url}" class="btn" title="Site web de ${acteurInstance?.nomSEO}" rel="external">
                                 <i class="fa fa-eye"></i>
                               </a>
                               
                                   </g:if>
                             
                                     <g:if test="${acteurInstance.facebook}">   
                                    <a class="btn" href="${acteurInstance.facebook}" title="Page Facebook de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-facebook"></i>
                                       </a>
                                     </g:if>
                                     <g:if test="${acteurInstance.twitter}">                                     
                                       <a class="btn" href="${acteurInstance.twitter}" title="Timeline Twitter de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-twitter"></i>
                                       </a>
                                     </g:if>
                                     <g:if test="${acteurInstance.googleplus}">   
                                       <a class="btn" href="${acteurInstance.googleplus}" title="Page google+ de ${acteurInstance?.nomSEO}"  rel="external">
                                           <i class="fa fa-google-plus"></i>
                                       </a>
                                     </g:if>
                                     <g:if test="${acteurInstance.linkedin}">   
                                       <a class="btn" href="${acteurInstance.linkedin}" title="Timeline Linkedin de ${acteurInstance?.nomSEO}" rel="external">
                                           <i class="fa fa-linkedin"></i>
                                       </a>
                                     </g:if>
                                </div></center>
                                   </g:if>
                            </div>
                            <div id="quoi" class="tab-pane">
                                         
                        <div class="prf-contacts">
                           <h2 title ="${acteurInstance?.nom}"><span><i class="fa fa-map-marker"></i></span> Périmètre d'intervention de ${acteurInstance?.nom} </h2>
                        </div>
                              <div class="col-md-6">
                                <header>
                               <h3 title="${acteurInstance?.nomSEO} - projet"> Projets couverts :</h3>
                                </header>
                                <p>Spécialiste du ${acteurInstance?.typeActeur?.nom},  ${acteurInstance?.nom} finance des projets de type :</p>
                                <ul>  <g:each in="${typeProjets}" status="i" var="item">
                                         <li class="nav nav-stacked nav-pills ">
                                             <a href="${lien}/financement_projet/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME" class="btn  ">                                           
                                                        <span class=""><i class="fa fa-eye"></i></span>               ${item.nom}
                                                                                      </a>
                            </li>
                               </g:each> </ul>
                               
                       </div>
                              
                              <div class="col-md-6">
                                <header>
                               <h3 title="${acteurInstance?.nomSEO} - secteur"> Secteurs couverts :</h3>
                                </header>
                                <p>${acteurInstance?.nom} propose des solutions de financement pour les entreprises des secteurs :
                                  </p>
                                <ul>  <g:each in="${perimetre}" status="i" var="item">
                                         <li class="nav nav-stacked nav-pills ">
                                             <a href="${lien}/secteur/${item.id}/${item.nomSEO}" title="${item.nom} - financement PME" class="btn  ">                                           
                                                        <span class=""><i class="fa fa-eye"></i></span>               ${item.nom}
                                                                                      </a>
                            </li>
                               </g:each> </ul>
                               
                       </div>
                               
                            </div>
                          <div id="ou" class="tab-pane">
                              <div class="">
                                    <div class="prf-contacts">
                                        <h2 title ="coût et délai de ${acteurInstance.nom}"><span><i class="fa fa-map-marker"></i></span>   Description de l'offre principale de ${acteurInstance.nom}</h2>
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
                                            <text class="col-lg-3">Délai de remboursement :</text>
                                            <p class="col-lg-9">
                                              <input id="horizon" type="text" name="variableInital" value="${it.tempsMinimum};${it?.tempsMaximum} " data-type="double" data-postfix=" Mois" data-hasgrid="true" />
                                            </p>
                                        </div>                                      
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût initial :</text>
                                            <p class="col-lg-9">
                                              <input id="variableInital" type="text" name="variableInital" value="${it.coutVarEntrepriseMin};${it?.coutVarEntrepriseMax} " data-type="double" data-postfix=" %" data-hasgrid="true" />
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Montant des financements :</text>
                                            <p class="col-lg-9">
                                            <!--  <input id="financements" type="text" name="financements" value="${it.montantMinimum};${it.montantMaximum}" data-type="double" data-postfix=" &euro;" data-hasgrid="true" />
                                            -->  <input id="financements" type="text" name="financements" value="${it.montantMinimum};${it.montantMaximum}" />
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <text class="col-lg-3">Coût récurrent :</text>
                                            <p class="col-lg-9">
                                              <input id="recurrent" type="text" name="recurrent" value="${it.recurrentMin};${it?.recurrentMax}" data-type="double" data-postfix=" %" data-hasgrid="true" />
                                            </p>
                                        </div>
                                    </form>
                                  
                                    
                                </g:each>
                                <g:if test="${ (acteurInstance.publie)}">
                                  
                                   </g:if>
                               <g:else>
                                 <label>Données moyennes indicatives. Nous travaillons à affiner ces données</label>
                               </g:else>
                                </div>
                            </div>
                          <div id="comment" class="tab-pane ">   
                                
                                    <div class="prf-contacts">
                                        <h2  title ="acteurs ${acteurInstance.typeActeur.nom}"><span><i class="fa fa-map-marker"></i></span>Acteurs concurrents de ${acteurInstance.nom}</h2>
                                    </div>
                            <div class="col-lg-3"></div>
                            <div class="col-lg-6">
                                  <div id="c-slide" class="carousel slide auto panel-body">
                    <ol class="carousel-indicators out">
                       
                      <g:each in="${concurrents}" status="i" var="acteurInstance">
                        <g:if test="${i>0}">
                        <li class="" data-slide-to="${i}" data-target="#c-slide" title="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio"></li>
                        </g:if>
                        <g:else>
                          <li class="active" data-slide-to="0" data-target="#c-slide" title="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio"></li>
                        </g:else>
                      </g:each>
                    </ol>
                    <div class="carousel-inner">
                      
                      <g:each in="${concurrents}" status="i" var="acteurInstance">
                        <g:if test="${i>0}">
                                   <div class="item text-center">
                        </g:if>
                        <g:else>
                                   <div class="item text-center active">
                          
                        </g:else>
                        <h3>
                          <span class="tm">
                                           <a rel="nofollow" href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio">${fieldValue(bean: acteurInstance, field: "nom")}</a>
                                                    </span></h3>
                         <div class="tm-avatar">
                                                  <g:if test="${ (acteurInstance.publie)}"></br>
                               <img  src="${request.contextPath}/images/logo/${acteurInstance?.image}"/>
                                   </g:if>
                               <g:else>      
                               </g:else>  </div>
                            <p>${acteurInstance?.slogan}</p></br>
                            <a rel="nofollow" href="${lien}/fiche/${acteurInstance.id}/${acteurInstance.nomSEO}" title ="${acteurInstance.nomSEO} - ${acteurInstance.typeActeur.nomSEO} - présentation par Alloratio" class="btn btn-white">
                            Voir description
                            </a>
                        </div>
                              </g:each>           
                      
                  
                        
                    </div>
                    <a data-slide="prev" href="#c-slide" class="left carousel-control">
                      <i class="fa fa-angle-left"></i>
                    </a>
                    <a data-slide="next" href="#c-slide" class="right carousel-control">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
                </div>
                                                                
                            </div>
                            <div class="col-lg-3"></div>
                            </div>
                        </div>
                        
                       
                    </div>
                    </div>
                </section>
  
                

<script type="text/javascript" src="${request.contextPath}/js/ion.rangeSlider-1.8.2/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>

<script>
    $(document).ready(function(){
        $("#range_1").ionRangeSlider({
        min: 0,
        max: 5000,
        from: 1000,
        to: 4000,
        type: 'double',
        step: 1,
        prefix: "$",
        prettify: false,
        hasGrid: true
    });
        $("#financements").ionRangeSlider({
        min: 0,
        max: 5000,
        from: 1000,
        to: 4000,
        type: 'double',
        step: 1,
        prefix: "$",
        prettify: false,
        hasGrid: true
    });
        $("#recurrent").ionRangeSlider();
        $("#variableInital").ionRangeSlider();
        $("#horizon").ionRangeSlider();

        $("#range_5").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " mm",
        prettify: false,
        hasGrid: true
    });
        $("#range_6").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        type: 'single',
        step: 1,
        postfix: "°",
        prettify: false,
        hasGrid: true
    });

        $("#range_4").ionRangeSlider({
        type: "single",
        step: 100,
        postfix: " light years",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
    });
        $("#range_3").ionRangeSlider({
        type: "double",
        postfix: " miles",
        step: 10000,
        from: 25000000,
        to: 35000000,
        onChange: function(obj){
            var t = "";
            for(var prop in obj) {
                t += prop + ": " + obj[prop] + "\r\n";
            }
            $("#result").html(t);
        },
        onLoad: function(obj) {
            //
        }
    });

        $("#updateLast").on("click", function(){

        $("#range_3").ionRangeSlider("update", {
            min: Math.round(10000 + Math.random() * 40000),
            max: Math.round(200000 + Math.random() * 100000),
            step: 1,
            from: Math.round(40000 + Math.random() * 40000),
            to: Math.round(150000 + Math.random() * 80000)
        });

    });
    });
</script>

