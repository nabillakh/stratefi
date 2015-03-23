
            <div class="wdgt-row">
                <img src="${lien}/images/fond3.jpg" height="120" alt="">
                <div class="wdt-head">
                    ${raw(phrase)}
                </div>
            </div>
            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-6 today-status">
                      
                <sec:ifLoggedIn>
                      <a href="${lien}/user/editionCompte" title="Gestion de votre compte"><h1>Paramètres</h1>
                        <i class="fa fa-wrench"></i></a>
                </sec:ifLoggedIn>
              <sec:ifNotLoggedIn>
                       <a href="${lien}/login"> <h1> Se connecter </h1>
                       <i class="fa fa-key"></i></a>
              </sec:ifNotLoggedIn>
                        
                    </div>
                    <div class="col-md-6">
                        <ul>
                          <li title="préparer votre financement">
                            <a href="${lien}/user/nouvelleDemande" title="Créer une demande de financement">
                                <h2>Demande Financement</h2>
                                <i class="fa  fa-money text-info"></i>
                                <div>Se financer</div>
                            </a>
                            </li>
                            
                            <li title="Evaluez vous comme les banques le font">
                                <a href="${lien}/user/edit/${sec.loggedInUserInfo(field:"id")}" title="Profitez d'une analyse financière gratuite">
                                  <h2>Analyse financière</h2>
                                <i class="fa fa-phone text-danger"></i>
                                <div>Se préparer</div>
                                </a>
                            </li>
                            
                            <li >
                              <a href="${lien}/comparateur" title="Comparer simplement les moyens de financement">
                                <h2>Comparer financeurs</h2>
                                <i class="fa fa-eye text-success"></i>
                                <div>Comparer</div>
                                </a>
                            </li>
                            
                            <li>
                              <a href="http://www.alloratio.com/blog/" title="Blog d'alloratio">
                                <h2>Formation finance</h2>
                                <i class="fa fa-pencil text-primary"></i>
                                <div>Se former</div>
                              </a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

