
              <section class="panel">
                    <header class="panel-heading">
                        Profil d'utilisation de l'outil
                    </header>
                    <div class="panel-body">
                        <!--price start-->
                        <div class="text-center price-head">
                            <h1 class="color-terques"> Profitez de 30 jours d'essai gratuits </h1>
                            <p>Aucun risque, aucun frais, aucun engagement. </p>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                            <div class="pricing-table">
                                <div class="pricing-head">
                                    <h1> Créateur d'entreprise </h1>
                                </div>
                                <div class="pricing-quote">
                                  <i class="fa fa-rocket"></i>
                                  <p>Préparez votre envol</p>
                                </div>
                                <ul class="list-unstyled">
                                <div class="price-actions">
                                  <a href="#startUp" data-toggle="modal" class="btn">
                                    Choisir cette offre
                                  </a>
                                </div>
                                    <li><i class="fa fa-check"></i> Business plan financier </li>
                                    <li><i class="fa fa-check"></i> Gestion de scénarii </li>
                                    <li><i class="fa fa-check"></i> Maîtrise de l'évolution cash de la structure </li>
                                    <li><i class="fa fa-check"></i> Support technique </li>
                                    <li></li>
                                    <li> </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                            <div class="pricing-table most-popular">
                                <div class="pricing-head">
                                    <h1> PME / PMI </h1>
                                </div>
                                <div class="pricing-quote">
                                  <i class="fa fa-money"></i>
                                  <p>Anticipez vos financements</p>
                                </div>
                                <ul class="list-unstyled">
                                <div class="price-actions">
                                    <a href="${request.contextPath}/entreprise/creerPME" class="btn"> Choisir cette offre </a>
                                </div>
                                    <li><i class="fa fa-check"></i> Business plan financier </li>
                                    <li><i class="fa fa-check"></i> Gestion de scénarii </li>
                                    <li><i class="fa fa-check"></i> Maîtrise de l'évolution cash de la structure </li>
                                    <li><i class="fa fa-check"></i> Pilotage orienté cash flow </li>
                                    <li><i class="fa fa-check"></i> Support technique </li>
                                    <li><i class="fa fa-check"></i> Analyse financière mensuelle </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                            <div class="pricing-table">
                                <div class="pricing-head">
                                    <h1> Repreneur d'entreprise </h1>
                                </div>
                                <div class="pricing-quote">
                                  <i class="fa fa-rocket"></i>
                                  <p>Evaluez votre cible et sa trésorerie</p>
                                </div>
                                <ul class="list-unstyled">
                                <div class="price-actions">
                                    <a href="${request.contextPath}/entreprise/creerReprise" class="btn"> Choisir cette offre </a>
                                </div>
                                    <li><i class="fa fa-check"></i> Business plan financier </li>
                                    <li><i class="fa fa-check"></i> Gestion de scénarii de reprise </li>
                                    <li><i class="fa fa-check"></i> Evaluation de la situation cash</li>
                                    <li><i class="fa fa-check"></i> Conseil d'amélioration du cahs management </li>
                                    <li><i class="fa fa-check"></i> Support technique </li>
                                    <li><i class="fa fa-check"></i> Analyse financière </li>
                                </ul>
                            </div>
                        </div>
                        <!--price end-->
                    </div>
</section>
                    </div>
                    </div>



<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="startUp" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 class="modal-title">Création d'une nouvelle société</h4>
                                    </div>
                                    <div class="modal-body">

                                        
			<g:form url="[resource:entrepriseInstance, action:'saveStartup']" >
				<fieldset class="form">
					<g:render template="formStartup"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
                                    </div>
                                </div>