
  
                    <!--//blog-entry-heading-->
                    <div class="container">
                      <div>
        <center> <h3 class="line-divider"> Situation de la société ${entrepriseInstance.nom} </br> </h3>
          </br>
        </center>
      </div>
                               
    <div>
      <div class='span12'>
      <p align='justify'>  </br></br>      
       <!-- Pour vos clients, vous êtes leurs fournisseurs. Aussi, votre capacité à rembourser vos dettes court et long terme est déterminante
        pour eux en phase de négociations commerciales. -->
        </br>
        
      </p>
    </div>
    </div>
                    
                      
                          </br>
                        <ul class="nav nav-tabs center" role="tablist">
                          <li class="active">
                            <a href="#general" role="tab" data-toggle="tab"  onclick="javascript:general2();return false;" >Données générales</a></li>
                          <li>
                            <a href="#vueFournisseur" role="tab" data-toggle="tab"  onclick="javascript:vueFournisseur();return false;">Analyse vue de vos clients</a></li>
                          <li>
                            <a href="#financier" role="tab" data-toggle="tab" onclick="javascript:financier();return false;">Analyse d'un analyste financier</a></li>
                          <li>
                            <a href="#analyseFi" role="tab" data-toggle="tab" onclick="javascript:analyseFi();return false;">Analyse de votre trésorerie</a></li>
                          <li>
                            <a  href="#liasse" role="tab" data-toggle="tab"  onclick="javascript:liasse();return false;"> Bilans gratuits </a>

                          </li>
                        </ul>
                          <div class="row">
                     <input type="hidden" id="entreprise" value="${entrepriseInstance.id}"> 
                                <div class='span12' >
                                 
                             

                              <div class="tab-content">
                                <div class="tab-pane active" id="general">
                                    
                                </div>
                                <script type="text/javascript">
                      var entreprise2 = ${entrepriseInstance.id};
                    <g:remoteFunction controller="entreprise" action="general" params="\'entrepriseInstance=\'+entreprise2" update="general"/>
                              </script>
                                <div class="tab-pane" id="vueFournisseur">
                                  
                                </div>
                                <div class="tab-pane" id="financier">
                                  
                                </div>
                                <div class="tab-pane" id="analyseFi">
                                 
                                </div>
                                <div class="tab-pane" id="liasse">
                                </div>
                              </div>
                                </div>
                        </div><!--//row-->
                        
                    <script>
                      var entreprise = ${entrepriseInstance.id};
                      function liasse() {
                      <g:remoteFunction controller="entreprise" action="liasse" params="\'entrepriseInstance=\'+entreprise" update="liasse"/>
                              }
                      function financier() {
                      <g:remoteFunction controller="entreprise" action="financier" params="\'entrepriseInstance=\'+entreprise" update="financier"/>
                              }
                      function vueFournisseur() {
                      <g:remoteFunction controller="entreprise" action="vueFournisseur" params="\'entrepriseInstance=\'+entreprise" update="vueFournisseur"/>
                              }
                      function general2() {
                      <g:remoteFunction controller="entreprise" action="general" params="\'entrepriseInstance=\'+entreprise" update="general"/>
                              }
                      function analyseFi() {
                      <g:remoteFunction controller="entreprise" action="analyseFi" params="\'entrepriseInstance=\'+entreprise" update="analyseFi"/>
                              }
                              
                     
                  </script>
                        
               