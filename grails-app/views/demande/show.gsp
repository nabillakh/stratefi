
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
       <g:set var="phrase" value="Préparez votre projet de financement" />
          <g:render template="/user/header"/>
            
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
                    <div class="col-md-6">
                                        <div class="prf-contacts">
                                            <h2> <span><i class="fa fa-user"></i></span> Demandeur</h2>
                                            <div class="location-info">
                                                <dt>Nom du demandeur</dt>
                                                <dd>
                                                <g:if test="${demandeInstance?.user?.nom}">
                                                       ${demandeInstance?.user?.nom} ${demandeInstance?.user?.prenom}
                                                      </g:if>
                                                <g:else>
                                                  <span class="badge bg-red"><i class="fa fa-exclamation"></i></span>  A renseigner 
                                                </g:else>
                                                </dd>
                                                <dt> <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> </dt>
                                                <dd> 
                                                <g:if test="${demandeInstance?.user?.telephone}">
                                                      ${demandeInstance?.user?.telephone}
                                                      </g:if>
                                                <g:else>
                                                  <span class="badge bg-red"><i class="fa fa-exclamation"></i></span>  A renseigner 
                                                </g:else></dd>
                                                <dt> <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> </dt>
                                                <dd><g:if test="${demandeInstance?.user?.username}">
                                                      ${demandeInstance?.user?.username}
                                                      </g:if>
                                                <g:else>
                                                  <span class="badge bg-red"><i class="fa fa-exclamation"></i></span>  A renseigner 
                                                </g:else>
                                            </dd>
                                            </div>
                                            </div>
                                            </div>
<div class="col-md-6">
                                        <div class="prf-contacts">
                                            <h2> <span><i class="fa fa-gears"></i></span>Entreprise</h2>
                                            <div class="location-info">
                                                <dt>Nom de la société</dt>
                                                <dd> 
                                                <g:if test="${demandeInstance?.entreprise?.nom}">
                                                      ${demandeInstance?.entreprise?.nom}
                                                      </g:if>
                                                <g:else>
                                                  <span class="badge bg-red"><i class="fa fa-exclamation"></i></span>  A renseigner 
                                                </g:else></dd>
                                                <dt>Numéro SIREN </dt>
                                                <dd> 
                                                <g:if test="${demandeInstance?.entreprise?.siren}">
                                                      ${demandeInstance?.entreprise?.siren}
                                                      </g:if>
                                                <g:else>                                                   
                                <span class="badge bg-red"><i class="fa fa-exclamation"></i></span> A renseigner 
                                                </g:else>
                                                </dd>
                                                <dt>Secteur d'activité </dt>
                                                <dd> 
                                                <g:if test="${demandeInstance?.entreprise?.secteur?.nom}">
                                                      ${demandeInstance?.entreprise?.secteur?.nom}
                                                      </g:if>
                                                <g:else>                                                   
                                <span class="badge bg-red"><i class="fa fa-exclamation"></i></span> A renseigner 
                                                </g:else>
                                                </dd>
                                                <dt> Adresse </dt>
                                                <dd>
<g:if test="${demandeInstance?.entreprise?.adresse}">
                                                      ${demandeInstance?.entreprise?.adresse}</br>
                                                    ${demandeInstance?.entreprise?.codePostal} ${demandeInstance?.entreprise?.ville}</br>
                                                    ${demandeInstance?.entreprise?.pays}
                                                      </g:if>
                                                <g:else>
                                                  <span class="badge bg-red"><i class="fa fa-exclamation"></i></span>  A renseigner 
                                                </g:else></dd>
                                               
                                            </div>
                                        </div>
                                    </div>
        <div class="col-md-12">
        
          <div class="col-md-6">
            <center>
              <a href="#" class="btn btn-white">modifier</a>
            </center>
          </div>
          <div class="col-md-6">
            <center>
              <a href="#" class="btn btn-white">modifier</a>
            </center>
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
                            <a href="#">${etatInstance?.nom}</a>
                            </g:else>
                            </li>
                          </g:each>
                        
                    </ul>
                          </div>
                        </div>
                        <div id="about" class="tab-pane">
                        
                        ddd
                        
                        </div>
                        <div id="profile" class="tab-pane">Profile</div>
                        <div id="contact" class="tab-pane">Contact</div>
                    </div>
                </div>
                
  
                
  

            
        </section>
        
         
   

    <script src="${request.contextPath}/js/flot.chart.init.js"></script>
                
	</body>
</html>
