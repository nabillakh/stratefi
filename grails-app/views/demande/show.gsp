
<%@ page import="connection.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="comparaison">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title>Gestion de votre projet de financement ${demande?.nom}</title>
	
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
                <img src="${lien}/images/fond4.jpg" height="120" alt="">
                <div class="wdt-head">
                    Projet de financement : ${demandeInstance?.nom}
                </div>
            </div>

            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-6 today-status">
                        <h1>Eligibilité</h1>
                        <i class="fa fa-frown-o  text-danger"></i>
                        <div>Incomplet</div>
                    </div>
                    <div class="col-md-6">
                        <ul>
                          <li title="préparer votre financement">
                                <h2>Demande Financement</h2>
                                <i class="fa  fa-money text-info"></i>
                                <div>Gratuit</div>
                            </li>
                          
                            <li title="Evaluez vous comme les banques le font">
                                <h2>Analyse financière</h2>
                                <i class="fa fa-phone text-danger"></i>
                                <div>Gratuit</div>
                            </li>
                            
                            <li>
                                <h2>Comparer financeurs</h2>
                                <i class="fa fa-eye text-success"></i>
                                <div>Gratuit</div>
                            </li>
                            
                            <li>
                                <h2>Formation finance</h2>
                                <i class="fa fa-pencil text-primary"></i>
                                <div>Gratuit</div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

        </section>                     
        
      <section class="panel">
                <header class="panel-heading tab-bg-dark-navy-blue ">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#home">Données générales</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#about">Détails</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#profile">Réponses de financement</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#contact">Tableau de bord</a>
                        </li>
                    </ul>
                </header>
                <div class="panel-body">
                    <div class="tab-content">
                        <div id="home" class="tab-pane active">
                          
                          <div>
      
      <section class="panel">
                    <div class="panel-body profile-information">
                       <div class="col-md-1">
                       </div>
                       <div class="col-md-7">
                           <div class="">
                             </br>   
                      
                      
        <div class="form-group col-lg-12">
          <label for="nom" class="col-lg-4 control-label">
            Nom du projet	
          </label>
          <div class="col-lg-8">
            ${demandeInstance?.nom}
          </div>
        </div>
                            
        <div class="form-group col-lg-12">
          <label for="nomUser" class="col-lg-4 control-label">
            Nom du demandeur	
          </label>
          <div class="col-lg-8">
            ${demandeInstance.user?.nom}
          </div>
        </div>
                      
                      
        <div class="form-group col-lg-12">
          <label for="societe" class="col-lg-4 control-label">
            Société bénéficiaire
          </label>
          <div class="col-lg-8">
            ${demandeInstance.entreprise?.nom}
          </div>
        </div>
               
               
                              
                               </br>
                           </div>
                       </div>
                       <div class="col-md-4">
                           <div class="">
                             <div class="mini-stat clearfix">
            <span class="mini-stat-icon pink"><i class="fa fa-money"></i></span>
            <div class="mini-stat-info">
                <span>${demandeInstance?.montantRecherche} €</span>
                Montant recherché
            </div>
        </div>
                           </div>
                       </div>
                    </div>
                </section>
      </div>
                          <div class="position-center">
                            <ul class="breadcrumbs-alt">
                              <g:each in="${etatList}" status="j" var ="etatInstance">
                             <li>
                             <g:if test="${etatInstance.id == demandeInstance.etat.id}">
                               <a class="current" href="#">${etatInstance.nom}</a>
                             </g:if>
                            
                            <g:else>
                            <a href="#">${etatInstance.nom}</a>
                            </g:else>
                            </li>
                          </g:each>
                        
                    </ul>
                          </div>
                        </div>
                        <div id="about" class="tab-pane">
                        
                        
                        
                        </div>
                        <div id="profile" class="tab-pane">Profile</div>
                        <div id="contact" class="tab-pane">Contact</div>
                    </div>
                </div>
                
  
                
  

            
        </section>
        
         
                
  
  
                -->
   <script> 
function visibilite(thingId) 
{ 
var targetElement; 
targetElement = document.getElementById(thingId) ; 
if (targetElement.style.display == "none") 
{ 
targetElement.style.display = "" ; 
} else { 
targetElement.style.display = "none" ; 
} 
} 
</script> 


    <script src="${request.contextPath}/js/flot.chart.init.js"></script>
                
	</body>
</html>
