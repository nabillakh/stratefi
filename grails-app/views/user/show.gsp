
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
                    <header class="panel-heading">
                        <ul class="nav nav-tabs nav-justified ">
                            <li class="active" title="Type de financement">
                                <a data-toggle="tab" href="#produit" >
                                    Général
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#secteurs" title="Financement par secteur">
                                    Gestion de financement
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#projet" title="Projet à financer">
                                    Données financières
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#projet" title="Projet à financer">
                                    Paramètres
                                </a>
                            </li>
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="produit" class="tab-pane active">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Source de financement}">  Société :</h2>
                                      
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="{it.nomSEO}">
                                                    Nom : ${userInstance?.entreprise.nom} </br>
                                                    Siren : ${userInstance?.entreprise.siren}
                                         
                                                    </span>
                                                </div>
                                            </div>
                                    </div>
                                <div class="prf-contacts sttng">
                                        <h2 title ="Source de financement}">  Tableau de bord :</h2>
                                      
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="{it.nomSEO}">
                                                      Nb de demandes en cours?
                                                      Volume financé
                                                    </span>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div id="secteurs" class="tab-pane ">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Secteurs financés">Liste de financement : </h2>
                                      
                                    </div>
                                
                                </div>
                              
                              <table class="table  table-hover general-table">
			<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'demande.nom.label', default: 'Type')}" />
                                                
						<g:sortableColumn property="nom" title="${message(code: 'demande.nom.label', default: 'Nom')}" />
                                                
						<g:sortableColumn property="date" title="${message(code: 'demande.nom.label', default: 'Date de la demande')}" />
						<g:sortableColumn property="montantRecherche" title="${message(code: 'demande.nom.label', default: 'Montant recherché')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstance?.entreprise.demandes}" status="i" var="demandeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                                <td> <span class="label label-default">
                                          ${demandeInstance.type?.nom}
                                    </span></td>
						<td><g:link action="show" id="${demandeInstance.id}">${fieldValue(bean: demandeInstance, field: "nom")}</g:link></td>
					
					<td>${fieldValue(bean: demandeInstance, field: "date")}</td>
					
					
						<td>${fieldValue(bean: demandeInstance, field: "montantRecherche")}</td>
					
						<td>
                                                  <div class=" wk-progress">
                                                <div class="col-md-10">
                                                    <div class="progress ">
                                                        <div style="width: 57%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                                                            <span class="sr-only">57% Complete (success)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-2"></div>
                                            </div>
                                                </td>
					
					
					</tr>
				</g:each>
				</tbody>
			</table>
                              
                              <div class="inner-spacer chat-widget widget-content-padding"> 

                  <!-- chat tabs -->
                      
              <!-- end chat tabs -->

              <!-- chat box -->
              <div id="myChatTab">

                <!-- chat user1 -->	

                  <!-- chat messages -->
                  <div class="newsfeed1">
       
                    <table class="table  table-hover general-table">           
  <g:each  in="${userInstance.entreprise.demandes}">                
    <tr>
    <td>
        <div class="mini-stat clearfix">
            <span class="mini-stat-icon pink"><i class="fa fa-money"></i></span>
            <div class="mini-stat-info">
                <span>${it.montantRecherche}</span>
                Montant recherché
            </div>
        </div>
    </td>
    <td>
<p>

  
    <strong><g:link action="show" controller="User" id="{message.auteur.id}"><i class="cus-user-business-boss"></i> ${it.nom}</g:link></strong> 
     
    <span class="message-time"><g:formatDate format="dd-MM-yyyy" date="${it.date}"/></span>
<g:if test="{message.kanban}">
       <g:link action="show" controller="User" id="{message.kanban.id}"></br>  <i class="cus-briefcase"></i> ${it.description}</g:link>
       </g:if>
    <span class="message-text">        
      <g:link  action="index" controller="commentaire"  class="pull-right">X reponses</g:link> 
         
  </span>
    <div class="col-md-6">
                                                <div class="col-md-7">
                                                    <div class="progress ">
                                                        <div style="width: 57%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                                                            <span class="sr-only">57% Financer</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">57%</div>
                                            </div>
                                                                     

</p>
                </td></tr>
  </g:each>  </table>       
                  <!-- end chat messages -->

                </div>
                <!-- end chat user1 -->

                <!-- chat user2 -->
                

                <!-- end chat user2 -->

              </div>
              <!-- end chat box -->




          </div>
                            </div>                          
                            <div id="projet" class="tab-pane ">
                              <div class="position-center">
                                    <div class="prf-contacts sttng">
                                        <h2 title ="Projets financés"> Type de projets : </h2>
                                      
                                <div class=" wk-progress tm-membr">
                                                <div class="col-md-6 col-xs-6">
                                                    <span class="tm" title ="{it.nomSEO}">
                                                        {fieldValue(bean: it, field: "nom")}
                                                    </span>
                                                </div>
                                                <div class="col-md-4 col-xs-4">
                                                  
                                                </div>
                                                <div class="col-md-2 col-xs-2">
                                                    <a href="${lien}/financement_projet/{it.id}/{it.nomSEO}" title ="{it.nomSEO}" class="btn btn-white">Voir la fiche</a>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
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
