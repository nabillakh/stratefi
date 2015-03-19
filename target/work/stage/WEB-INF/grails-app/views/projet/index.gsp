<div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Liste des projets
                    </header>
                    <div class="panel-body">
                        <table class="table  table-hover general-table">
                            <thead>
                            <tr>
                                <th> Nom</th>
                                <th class="hidden-phone">Descrition</th>
                                <th>Profit</th>
                                <th>Status</th>
                                <th>Progress</th>
                            </tr>
                            </thead>
                            <tbody>
                              <g:each in="${projetInstanceList}" status="i" var="projetInstance">
                            <tr>
                                <td><a href="#">${projetInstance.nom}</a></td>
                                <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                <td>1320.00 </td>
                                <td><span class="label label-info label-mini">Due</span></td>
                                <td>
                                    <div class="progress progress-striped progress-xs">
                                        <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                              </g:each>

                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
        </div>
	
          <div class="form-group">
                                <div class="col-lg-offset-10 col-lg-10">
                                    <button type="submit" class="btn btn-danger">Nouveau projet</button>
                                </div>
                            </div>