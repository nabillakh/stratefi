
<%@ page import="connection.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="comparaison">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
                        
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
  
          
                    <section class="panel">
                        <div class="panel-body">
          
               <div class="feed-box text-center col-md-6" >
                    <section class="">
                        <div class="panel-body">
                            <div class="corner-ribon blue-ribon">
                                <i class="fa fa-user"></i>
                            </div>
                            <h1>${userInstance?.nom} ${userInstance?.prenom} </h1>
                            <p>
                            <div class="location-info">
                                                <p>Email : ${userInstance?.username}<br>
                                                   Téléphone : ${userInstance?.telephone}</p>
                                            </div>
                            <a class="btn btn-info" href="${lien}/user/edit/${userInstance?.id}" style="color: whitesmoke">Mettre à jour</a>
                        </div>
                    </section>
                </div>
              <div class="feed-box text-center col-md-6" >
                    <section class="">
                        <div class="panel-body">
                            <div class="corner-ribon blue-ribon">
                                <i class="fa fa-wrench"></i>
                            </div>
                            <h1>${userInstance?.entreprise.nom}</h1>
                            <p>
                            <div class="location-info">
                                                <p>Adresse : ${userInstance?.entreprise.adresse}<br>
                                                   Siren :  ${userInstance?.entreprise.siren}</p>
                                            </div>
                            <a class="btn btn-info" href="${lien}/entreprise/edit/${userInstance?.entreprise.id}" style="color: whitesmoke">Mettre à jour</a>
                       
                        </div>
                    </section>
                </div>
                </div>
                    </section>
                          
                
  <section class="panel">
            <div class="wdgt-row"></div>

        </section>
  
  <section class="panel"> 
    <header class="panel-heading">
    Demandes de financement
    </header>
    <div class='panel-body'>
    
      
      
      
      <p>Aucune demande de financement n'a été formulée. Une demande est entièrement gratuite et sans risque. </br>
        Afin de pouvoir effectué une demande, tous les indicateurs ci dessous doivent être au vert.
      </p></br>
      <div class="col-md-3">
        <div class="profile-nav alt">
                            <section class="panel text-center">
                              <h2>Vous</h2>

                                <div class="panel-body">
                                    <div class="">
                                        <p style="justify">Qui êtes vous? </br>Quel est votre rôle?</p>
                                        <center>
                                      <a href="/stratefi/admin/analyseFi" class="btn btn-white" title="formation financement"><i class="fa fa-eye"></i>  Voir </a>
                                    </center>
                                    </div>
                                </div>

                            </section>
                        </div>
    </div>
    <div class="col-md-3">
        <div class="profile-nav alt">
                            <section class="panel text-center">
                              <span class="label label-danger">Votre société</span>

                                <div class="panel-body">
                                    <div class="">
                                        <p>Quelle est votre société? Est-ce une création ou une entreprise établie?</p>
                                    </div>
                                </div>

                            </section>
                        </div>
    </div>
    <div class="col-md-3">
        <div class="profile-nav alt">
                            <section class="panel text-center">
                                               <span class="label label-danger">Votre projet</span>


                                <div class="panel-body">
                                    <div class="">
                                        <p>Quel est votre projet? De quel montant avez vous besoin pour réussir votre développement?</p>
                                    </div>
                                </div>

                            </section>
                        </div>
    </div>
    <div class="col-md-3">
        <div class="profile-nav alt">
                            <section class="panel text-center">
                                               <span class="label label-danger">Appel d'offres</span>


                                <div class="panel-body">
                                    <div class="">
                                     
                                        <p>Qui souhaite financer votre projet? Comment et combien souhaite-il investir?</p>
                                    </div>
                                </div>

                            </section>
                        </div>
    </div>
    <div class="recent-act">
                                            <h1>Etapes pour vous financer</h1>
                                            <div class="activity-icon terques">
                                                <i class="fa fa-check"></i>
                                            </div>
                                            <div class="activity-desk">
                                                <h2>Vous</h2>
                                                <p>Qui êtes vous? </br>Quel est votre rôle?</p>
                                            </div>
                                            <div class="activity-icon red">
                                                <i class="fa fa-beer"></i>
                                            </div>
                                            <div class="activity-desk">
                                                <h2 class="red">Votre entreprise</h2>
                                                <p>Completed Coffee meeting with <a href="#" class="terques">Stive Martin</a> regarding the Product Promotion</p>
                                            </div>
                                            <div class="activity-icon purple">
                                                <i class="fa fa-tags"></i>
                                            </div>
                                            <div class="activity-desk">
                                                <h2 class="purple">Votre projet</h2>
                                                <p>3 photo Uploaded on facebook product page</p>
                                                
                                            </div>

                                            <div class="activity-icon green">
                                                <i class="fa fa-map-marker"></i>
                                            </div>
                                            <div class="activity-desk">
                                                <h2 class="green">yesterday</h2>
                                                <p>Outdoor visit at <a href="#" class="blue">California State Route</a> 85 with <a href="#" class="terques">John Boltana</a> & <a href="#" class="terques">Harry Piterson</a> regarding to setup a new show room.</p>
                                                <div class="loc-map">
                                                    location map goes here
                                                </div>
                                            </div>

                                            <div class="activity-icon yellow">
                                                <i class="fa fa-user-md"></i>
                                            </div>
                                            <div class="activity-desk">
                                                <h2 class="yellow">12 december 2013</h2>
                                                <p>Montly Regular Medical check up at Greenland Hospital.</p>
                                            </div>

                                        </div>
    </div>
    
    
    
    
    
        </section>   
  
                
                
	</body>
</html>
