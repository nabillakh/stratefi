
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
            <div class="wdgt-row">
                <img src="${lien}/images/fond4.jpg" height="120" alt="">
                <div class="wdt-head">
                    Tableau de bord de la société ${userInstance.entreprise?.nom}
                </div>
            </div>

            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-6 today-status">
                      <a href="${lien}/user/edit/${userInstance.id}" title="Gestion de votre compte"><h1>Paramètres</h1>
                        <i class="fa fa-wrench"></i></a>
                    </div>
                    <div class="col-md-6">
                        <ul>
                          <li title="préparer votre financement">
                            <a href="${lien}/demande/create" title="Créer une demande de financement">
                                <h2>Demande Financement</h2>
                                <i class="fa  fa-money text-info"></i>
                                <div>Gratuit</div>
                            </a>
                            </li>
                          
                            <li title="Evaluez vous comme les banques le font">
                                <a href="${lien}/user/edit/${userInstance.id}" title="Profitez d'une analyse financière gratuite">
                                  <h2>Analyse financière</h2>
                                <i class="fa fa-phone text-danger"></i>
                                <div>Gratuit</div>
                                </a>
                            </li>
                            
                            <li >
                              <a href="${lien}/comparateur" title="Comparer simplement les moyens de financement">
                                <h2>Comparer financeurs</h2>
                                <i class="fa fa-eye text-success"></i>
                                <div>Gratuit</div>
                                </a>
                            </li>
                            
                            <li>
                              <a href="http://www.alloratio.com/blog/" title="Blog d'alloratio">
                                <h2>Formation finance</h2>
                                <i class="fa fa-pencil text-primary"></i>
                                <div>Gratuit</div>
                              </a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

        </section>                     
        
           <div class="alert alert-danger alert-block fade in">
                                <button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>
                                <h4>
                                    <i class="icon-ok-sign"></i>
                                    Attention!
                                </h4>
             
                                <p>Votre compte est incomplet. Vous ne pouvez donc pas faire de demandes de financement pour l'istant.
                                Pour terminer votre inscription, cela se passe ici : <a href="${lien}/user/edit/${userInstance.id}" title="Gestion de votre compte"><i class="fa fa-wrench"></i></a></p>
                            </div>     
  
                
  <section class="panel">
            <div class="panel-body">
              <h3 title ="Financements de ${userInstance.entreprise?.nom}">Projets de financement : </h3>
              
              <g:if test='${userInstance.entreprise?.demandes}'>
              
              <p> Vous avez déposé ${userInstance.entreprise?.demandes?.size()} demandes de financement. Vous pouvez accéder aux détails de vos dossiers
              ainsi qu'à l'avancée des réponses des financeurs.</p> 
                              <table class="table  table-hover general-table">
			<thead>
					<tr>
                                          <th></th>
						<g:sortableColumn property="nom" title="${message(code: 'demande.nom.label', default: 'Nom')}" />
						<g:sortableColumn property="type" title="${message(code: 'demande.nom.label', default: 'Type')}" />
                                                
                                                
						<g:sortableColumn property="date" title="${message(code: 'demande.nom.label', default: 'Date de la demande')}" />
						<g:sortableColumn property="montantRecherche" title="${message(code: 'demande.nom.label', default: 'Montant recherché')}" />
					
					</tr>
				</thead>
				<tbody>
                                  
                                  
                                  
				<g:each in="${userInstance.entreprise?.demandes}" status="i" var="demandeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                          <td>
                                            <button class="btn btn-info" id="ouvert${i}" onclick="javascript:visibilite('${i}');" href="#texte${i}" title="plus d'infos" ><i class="fa fa-plus"></i></button>
                                            <button class="btn btn-danger" id="ferme${i}" onclick="javascript:visibilite('${i}');" href="#texte${i}" title="moins d'infos"  style="display:none;"><i class="fa fa-minus"></i></button>
                                               </td> 
						<td><g:link action="show" id="${demandeInstance.id}">${fieldValue(bean: demandeInstance, field: "nom")}</g:link></td>
					
                                                <td> 
                                          ${demandeInstance.type?.nom}
                                  </td>
					<td><g:formatDate format="dd/MM/yyyy" date="${demandeInstance?.date}"/></td>
					
					
						<td>${fieldValue(bean: demandeInstance, field: "montantRecherche")} €</td>
					
						<td>
                                                  <label class="label label-success">${demandeInstance.etat?.nom} </label>
                                                </td>
					
					
					</tr>
                                          <tr  id="texte${i}"  style="display:none;"> <td colspan="6" class="well">
    <div>
      <section class="panel">
                    <div class="panel-body profile-information">
                      
                       <div class="col-md-3">
                           <div class="profile-statistics">
                               <div class="mini-stat">
            <span class="mini-stat-icon pink">${Math.round(demandeInstance.montantRecherche / 1000)}</span>
            <div class="mini-stat-info">
                Montant à financer (k€)
            </div>
            </br>
            <span class="mini-stat-icon green">${demandeInstance.reponses.size()}</span>
            <div class="mini-stat-info">
                Proposition(s) de financement
            </div>

        </div>
                              
                           </div>
                       </div> 
                      
                       <div class="col-md-7">
                           <div class="profile-desk">
                               <h3>${demandeInstance?.nom}</h3>
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
        <div class="col-md-2">
                         </br>
                         </br>
                         <div class="btn-row">
                            <div class="btn-group-vertical">
                                <a href='${lien}/demande/show/${demandeInstance.id}' class="btn btn-white" type="button">
                                  <i class="fa fa-eye"></i> Voir</a>
                                <a href="${lien}/demande/edit/${demandeInstance.id}" class="btn btn-white" type="button">
                                  <i class="fa fa-wrench"></i> Modifier</a>
                                <a href="#myModal" class="btn btn-danger" type="button" data-toggle="modal" >
                                  <i class="fa fa-rocket"></i> Publier</a>
                            </div>
                           <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Financement du projet ${demandeInstance.nom}</h4>
                                        </div>
                                        <div class="modal-body">

                                            En publiant votre demande de financement, Alloratio diffuse votre projet à ses partenaires financiers
                                            en toute confidentialité. 

                                        </div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-default" type="button">Annuler</button>
                                            <button class="btn btn-success" type="button">Envoyer</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         
                         
        </div>
            
                    </div>
                </section>
      
      </div>
    
                                              
    </td> </tr>
				</g:each>
				</tbody>
			</table>
                             
              </g:if>
              <g:else>
                <p>Vous n'avez aucune demande de financement concernant votre société en cours.
                Pour utiliser nos services, vous pouvez commencer le processus en déposant via le lien ci-dessous
                votre première demande. Cette demande sera créée sous le statut "brouillon" et ne sera ouvert aux appels
                d'offres de financement qu'à votre demande : </p>
                </br>
                <center>
                  <a href="${lien}/demande/create" class="btn btn-danger">Déposer votre premier dossier
                  </a>
                  </br>
                  </br>
                </center>
                
              </g:else>
                  </br>
            
            </div>

            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-3 today-status">
                    </div>
                    <div class="col-md-6">
                        <ul>
                          <li>
                                <h2>Demande Financement</h2>
                                <i class="fa  fa-money text-info"></i>
                                <div>Gratuit</div>
                            </li>
                          
                            <li>
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
                  
                    <div class="col-md-3 today-status">
                    </div>
                </div>
            </div>
        </section>
        
   <script> 
 
 function toutFerme() {
var targetElement; 
var butFerme;


   for(i=0; i< ${userInstance.entreprise.demandes?.size()};i++) {
     
var monDiv = "texte" + i;
var buttonPlus = "ouvert" + i ;

var buttonMoins = "ferme" + i ;

targetElement = document.getElementById(monDiv) ; 
butOuvert = document.getElementById(buttonPlus) ; 
butFerme = document.getElementById(buttonMoins) ; 

targetElement.style.display = "none" ; 
butFerme.style.display = "none";
butOuvert.style.display = "";

   }
 }
     
     
function visibilite(thingId) 
{ 
var targetElement; 
var butFerme;
var butOuvert;

var monDiv = "texte" + thingId;
var buttonPlus = "ouvert" + thingId ;
var buttonMoins = "ferme" + thingId ;

targetElement = document.getElementById(monDiv) ; 
butFerme = document.getElementById(buttonMoins) ; 
butOuvert = document.getElementById(buttonPlus) ; 
if (targetElement.style.display == "none") 
{ 
  toutFerme();
targetElement.style.display = "" ;
butFerme.style.display = "";
butOuvert.style.display = "none";

} else { 
targetElement.style.display = "none" ; 
butFerme.style.display = "none";
butOuvert.style.display = "";
} 
} 
</script> 
                
	</body>
</html>
