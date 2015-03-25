
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
     <g:set var="lien" value="http://comparateur.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  
     
     <section class="panel">
       <g:set var="phrase" value="Préparez votre projet de financement" />
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
                                    
                        <li><a href="${lien}/user/profilEntreprise">Financements</a></li>
                        <li><a href="${lien}/user/show/${demandeInstance?.id}">${demandeInstance?.nom}</a></li>
                <sec:ifNotLoggedIn>

            
                        <li>
                          <a href="${lien}/login/inscription"  class='btn btn-danger '>
                            S'inscrire
                          </a>
                        </li>

                </sec:ifNotLoggedIn>
                        
                        
                    </ul>
                
  <div class="row">
    
    <div class="col-lg-3">
      <section class="panel">
        <div class="panel-body">
        
            <div class="prf-contacts">
                                  <h2>
  <span>
    <i class="fa fa-search">
    </i>
  </span>
  Menu
</h2>
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
        
                                        <div class="prf-contacts">
                                          
                                            <h2> <span><i class="fa fa-user"></i></span> Projet</h2>
                                
                                       
                    <div class="profile-information">
                      
                       <div class="col-md-5">
                           <div class="profile-statistics">
                               <div class="mini-stat">
            <span class="label label-primary">${Math.round(demandeInstance.montantRecherche / 1000)}</span>
            <div class="mini-stat-info">
                Montant à financer (k€)
            </div>
            </br>
            <span class="label label-danger">${demandeInstance?.reponses?.size()}</span>
            <div class="mini-stat-info">
                Proposition(s) de financement
            </div>
            </br>
            <span class="label label-danger">${demandeInstance?.etat?.nom}</span>
            <div class="mini-stat-info">
                Etat de la demande
            </div>

        </div>
                              
                           </div>
                       </div> 
                      
                       <div class="col-md-7">
                           <div class="">
                               <h3 title="financement du projet ${demandeInstance?.nom}">${demandeInstance?.nom}</h3>
                               <span class="text-muted">${demandeInstance.type?.nom}</span>
                               <dl>
                                    <dt>Description</dt>
                                    <dd>${demandeInstance?.description}</dd>
                                    <dt>Besoin du marché</dt>
                                    <dd>${demandeInstance?.besoinMarche}</dd>
                                    <dt>Disruption proposée</dt>
                                    <dd>${demandeInstance?.besoinMarche}</dd>
                                </dl>
                           </div>
                       </div>
            
                    </div>
    
         </div>
                                        </div>
      
      </section>
      <section class="panel">
        <div class="panel-body">
        
                                        <div class="prf-contacts">
                                          
                                            <h2> <span><i class="fa fa-user"></i></span> L'entreprise</h2>
                                            
                                             <div class="location-info">
                                              <p>
                                              Qui êtes vous?</p>
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom de l'entreprise (*)</label>
                                                <div class="col-lg-7">
                                                 <g:textField value="${formulaireInstance?.nomEntreprise}" class="form-control" name="nomEntreprise" placeholder="Saisir le nom du projet" required="required"/>

                                                </div>
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="siren" class="col-lg-5 col-sm-5 control-label">Numéro de SIREN</label>
                                                <div class="col-lg-7">
                                                 <g:textField value="${demandeInstance?.formulaire?.siren}" class="form-control" name="siren" placeholder="SIREN" required="required"/>

                                                    </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Secteur d'activité</label>
                                               
                                <div class="col-lg-7">
                                  ${demandeInstance?.formulaire?.secteur?.id}
                                </div>
                                                
                                            </div>
  
  
  
                                                
                                            </div>
                                            
                                            
                                <div class="col-md-4">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon yellow">${Math.round(demandeInstance.montantRecherche / 1000)}</span>
            <div class="mini-stat-info">
                <span></span>
                Montant à financer (k€)
            </div>
        </div>
    </div>
                                            <div class="col-md-4">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon orange">${demandeInstance?.reponses?.size()}</span>
            <div class="mini-stat-info">
                <span></span>
                Proposition(s) de financement
            </div>
        </div>
    </div>
                                            <div class="col-md-4">
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span>
            <div class="mini-stat-info">
                <span>${demandeInstance?.etat?.nom}</span>
                Etat de la demande
            </div>
        </div>
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
                        
                      ssss
                        
                        </div>
                        <div id="profile" class="tab-pane">Profile</div>
                        <div id="contact" class="tab-pane">Contact</div>
                    </div>
                </div>
                
  
                
  

            
        </section>
        
         
    </div>
  </div>
      
   

    <script src="${request.contextPath}/js/flot.chart.init.js"></script>
                
	</body>
</html>
