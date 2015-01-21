
<!DOCTYPE html>

  <head>
		<meta name="layout" content="main"/>
		<title>Alloratio</title>
                <g:javascript library="jquery" plugin="jquery" />
  </head>

  
                                          <sec:ifLoggedIn>

   				
     <!-- main content -->
<div id='principal'></div>


<script>
                      var compte = ${sec.loggedInUserInfo(field:"id")};
                          <g:remoteFunction controller="user" action="accueil" params="\'userInstance=\'+compte" update="principal"/>
                              </script>
 
</sec:ifLoggedIn>
  
  
  
  
  <sec:ifNotLoggedIn>
    <h2> <g:link  action="index" controller="comparateur"> <font size="3" face="georgia" color="red"> Se connecter </font></g:link> <h2>
  </sec:ifNotLoggedIn>

