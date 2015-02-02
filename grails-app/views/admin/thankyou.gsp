<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
		<meta name="layout" content="comparaison"/>
		<title>Alloratio : inscription réussie.</title>
                <meta name="description" content="solutions de Financement des PME et startup pour projets de type : " />
                <meta name="keywords" content=" financement, crédit, levée de fonds, crowdfunding, PME, startup, annuaire" />
                
                <g:javascript library="jquery" plugin="jquery" />
  </head>
  <body>
    
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
    
    <section class="panel">    
      
    <div class="panel-body">
    <div class="position-center">
      <h1>Bienvenue sur Alloratio</h1>
      <p>Vous recevrez régulièrement nos actualités :</p>
      <ul>
        <li>
          Nouveaux produits de financement
        </li>
        <li>
          Mise à jour des données
        </li>
        <li>
          Et pleins de nouveaux services...
        </li>
      </ul> 
      En attendant, suivez nous sur les réseaux sociaux !
    </br>
    A bientôt !
    </br>
    
<div class="top-nav clearfix">
    <ul class="nav center-block top-menu">
    <li>
                                       <a href="https://www.linkedin.com/company/9222370" title="Page Linkedin d'alloratio">
                                           <i class="fa fa-linkedin"></i>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="https://plus.google.com/+Alloratio" title="Page google+ d'alloratio">
                                           <i class="fa fa-google-plus"></i>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="https://twitter.com/alloratio" title="Timeline Twitter d'alloratio">
                                           <i class="fa fa-twitter"></i>
                                       </a>
                                   </li></ul>
    
    </div>
                                </div>
                                </div>
    </section> 
    
    </div>
    
  </body>
</html>
