
            <div class="wdgt-row">
                <img src="${lien}/images/business-header.jpg" height="120" alt="">
                <div class="wdt-head">
                     ${ raw(phrase)}
                </div>
            </div>
            <div class="panel-body">
                <div class="navbar-collapse collapse">
                    <div class="col-md-2">
              
                        <ul class="nav navbar-nav navbar-right">
                          <li title="préparer votre financement">
                <sec:ifLoggedIn>
                  <a class='btn btn-round btn-white'  href="${lien}/user/profilEntreprise" title="Gestion de votre compte">Tableau de bord
                        <i class="fa fa-dashboard"></i></a>
                </sec:ifLoggedIn>
              <sec:ifNotLoggedIn>
                       <a class='btn btn-round btn-white'  href="${lien}/login"><i class="fa fa-key"></i> Se connecter 
                       </a>
              </sec:ifNotLoggedIn>
                        </li>
                        </ul>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <ul class="nav navbar-nav navbar-right">
                          <li title="préparer votre financement">
                            <a  class='btn btn-round btn-white' href="${lien}/user/nouvelleDemande" title="Créer une demande de financement">
                               
                                <i class="fa  fa-money text-info"></i>
                                Se financer
                            </a>
                            </li>
                            
                            <li title="Evaluez vous comme les banques le font">
                                <a  class='btn btn-round btn-white' href="${lien}/user/analyseFi" title="Profitez d'une analyse financière gratuite">
                                 
                                <i class="fa fa-phone text-danger"></i>
                                Se préparer
                                </a>
                            </li>
                            
                            <li >
                              <a  class='btn btn-round btn-white' href="${lien}/comparateur" title="Comparer simplement les moyens de financement">
                         
                                <i class="fa fa-eye text-success"></i>
                                Comparer
                                </a>
                            </li>
                            
                            <li>
                              <a class='btn btn-round btn-white'  href="http://www.alloratio.com/blog/" title="Blog d'alloratio">
                   
                                <i class="fa fa-pencil text-primary"></i>
                                S'informer
                              </a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

