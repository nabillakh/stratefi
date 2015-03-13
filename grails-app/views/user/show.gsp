
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
                    Tableau de bord de la société ${userInstance?.entreprise.nom}
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
                            
                            <li >
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
            <div class="panel-body">
              <h3 title ="Financements de ${userInstance?.entreprise.nom}">Projets de financement : </h3>
              <p> Vous avez X demandes s de </p> 
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
				<g:each in="${userInstance?.entreprise.demandes}" status="i" var="demandeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                          <td><button class="btn btn-info" id="bouton_texte${i}" onclick="javascript:visibilite('texte${i}');" href="#texte${i}" title="plus d'infos"><i class="fa fa-plus"></i></button>
                                                </td>
						<td><g:link action="show" id="${demandeInstance.id}">${fieldValue(bean: demandeInstance, field: "nom")}</g:link></td>
					
                                                <td> 
                                          ${demandeInstance.type?.nom}
                                  </td>
					<td>${demandeInstance?.date}</td>
					
					
						<td>${fieldValue(bean: demandeInstance, field: "montantRecherche")}</td>
					
						<td>
                                                  <label class="label label-success">${demandeInstance.etat?.nom} </label>
                                                </td>
					
					
					</tr>
                                          <tr  id="texte${i}"  style="display:none;"> <td colspan="6">
    <div>
      <section class="panel">
                    <div class="panel-body profile-information">
                       <div class="col-md-2">
                         <ol>  <g:each in="${etatList}" status="j" var ="etatInstance">
                             <li> <g:if test="${etatInstance == demandeInstance.etat}">
                            <p class="text-primary">${etatInstance.nom}</p>
                            </g:if>
                            
                            <g:if test="${etatInstance.id < demandeInstance.etat.id}">
                            <p class="text-success">${etatInstance.nom}</p>
                            </g:if>
                            
                            <g:if test="${etatInstance.id > demandeInstance.etat.id}">
                            <p class="text-danger">${etatInstance.nom}</p>
                            </g:if>
                            </li>
                          </g:each>
                            </ol>
        </div>
                       <div class="col-md-7">
                           <div class="profile-desk">
                               <h1>${demandeInstance.type?.nom}</h1>
                               <span class="text-muted">${demandeInstance?.description}</span>
                               </br>
                               <p>
                               ${demandeInstance?.disruption}
                               </p>
                              
                               <center>
                               <a href='${lien}/demande/show/${demandeInstance.id}' title="Voir"  class="btn btn-white"><i class="fa fa-eye"></i> Voir </a>
                               <a href="${lien}/demande/edit/${demandeInstance.id}" class="btn btn-white" title ='demander un financement'>Publier</a>
                               <a href="${lien}/demande/edit/${demandeInstance.id}" class="btn btn-white">Modifier</a>
                               </center>
                              
                           </div>
                       </div>
                       <div class="col-md-3">
                           <div class="profile-statistics">
                               <div class="mini-stat">
            <span class="mini-stat-icon pink">${Math.round(demandeInstance.montantRecherche / 1000)}</span>
            <div class="mini-stat-info">
                Montant à financer (k€)
            </div>
        </div>
                             <div class="mini-stat">
            <span class="mini-stat-icon green">${demandeInstance.reponses.size()}</span>
            <div class="mini-stat-info">
                Proposition(s) de financement
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
    <tr></tr>

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

            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-6 today-status">
                        <h1>Eligibilité</h1>
                        <i class="fa fa-frown-o  text-danger"></i>
                        <div>Incomplet</div>
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
                
	</body>
</html>
