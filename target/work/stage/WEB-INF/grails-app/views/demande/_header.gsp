
            <div class="wdgt-row">
                <img src="${lien}/images/fond4.jpg" height="120" alt="">
                <div class="wdt-head">
                    ${phrase}
                </div>
            </div>
            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-6 today-status">
                      <a href="${lien}/user/editionCompte" title="Gestion de votre compte"><h1>Paramètres</h1>
                        <i class="fa fa-wrench"></i></a>
                    </div>
                    <div class="col-md-6">
                        <ul>
                          <li title="préparer votre financement">
                            <a  data-toggle="modal" href="#demandeFinancement" title="Créer une demande de financement">
                                <h2>Demande Financement</h2>
                                <i class="fa  fa-money text-info"></i>
                                <div>Gratuit</div>
                            </a>
                            </li>
                            
                            <li title="Evaluez vous comme les banques le font">
                                <a href="${lien}/user/edit/${sec.loggedInUserInfo(field:"id")}" title="Profitez d'une analyse financière gratuite">
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


<div class="modal fade" id="demandeFinancement" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 class="modal-title">Nouveau projet de financement</h4>
                                    </div>
                                    <div class="modal-body">
<g:form url="[resource:demandeInstance, action:'saveDemande', controller : 'user']"  class="form-horizontal" >
				<fieldset class="form">
					<g:render template="formFinancement"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-default" value="Enregistrer" />
				</fieldset>
			</g:form>

                                    </div>

                                </div>
                            </div>
                            </div>
                          
        