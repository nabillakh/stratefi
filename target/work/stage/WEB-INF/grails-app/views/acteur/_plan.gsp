<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<script>
  $('#mainTable').editableTableWidget().numericInputExample().find('td:first').focus();
  $('#textAreaEditor').editableTableWidget({editor: $('<textarea>')});
  window.prettyPrint && prettyPrint();
</script>

<h3>Hypothèses de travail : </h3>


<h3>Plan de financement à 1 an : </h3>
<section class="panel">
                    <div class="panel-body">
                        <div class="adv-table editable-table ">
                            <div class="clearfix">
                                <div class="btn-group">
                                    <button id="editable-sample_new" class="btn btn-primary">
                                        Add New <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                                <div class="btn-group pull-right">
                                  
                                </div>
                            </div>
                            <div class="space15"></div>
                            
                            <div class="alert alert-error hide" id="alert">
			That would cost too much
		</div>
                            <table class="table table-hover table-condensed"  id="mainTable">
                                <thead>
                                
        <tr>
            <th></th>
            <g:each in="${plans}">
            <th>M${it.mois}</th>
            </g:each>
        </tr>
                                </thead>
                                <tbody>
                                  
      <tr class="">
        <td>Capacité d'autofinancement</td>
            <g:each in="${plans}" status="k" var="plan">
            <td id=${k}>${plan.capaciteDAutofinancement} + ${k}
            </td>
            </g:each>
      </tr>
      <tr class="">
        <td>Cession d'immobilisations</td>
            <g:each in="${plans}">
            <td>${it.cessionDImmobilisations}</td>
            </g:each>
      </tr>
      <tr class="">
        <td>Augmentation de capital</td>
            <g:each in="${plans}">
            <td>${it.augmentationCapital}</td>
            </g:each>
      </tr>
      <tr class="">
        <td>Subventions</td>
            <g:each in="${plans}">
            <td>${it.subventions}</td>
            </g:each>
      </tr>
      <tr class="">
        <td>Emprunts</td>
            <g:each in="${plans}">
            <td>${it.emprunts}</td>
            </g:each>
      </tr>
      
      <tr class="">
        <th>Total Ressources</th>
            <g:each in="${plans}">
            <th>${it.ressources}</th>
            </g:each>
      </tr>
      <tr class="">
        <td>Dividendes verses</td>
            <g:each in="${plans}">
            <td>${it.dividendesVerses}</td>
            </g:each>
      </tr>
      <tr class="">
        <td>Investissements</td>
            <g:each in="${plans}">
            <td>${it.investissements}</td>
            </g:each>
      </tr>
      <tr class="">
        <td>Remboursement des emprunts</td>
            <g:each in="${plans}">
            <td>${it.remboursementCapitalDesEmprunts}</td>
            </g:each>
      </tr>
      <tr class="">
        <td>Variation du BFRE</td>
            <g:each in="${plans}">
            <td>${it.variationDuBFRE}</td>
            </g:each>
      </tr>
      <tr class="">
        <th>Total Emplois</th>
            <g:each in="${plans}">
            <th>${it.emplois}</th>
            </g:each>
      </tr>
      <tr class="">
        <th>Variation de trésorerie</th>
            <g:each in="${plans}">
            <th>${- it.emplois + it.ressources}</th>
            </g:each>
      </tr>
      
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
<h3>Plan de financement à 3 ans : </h3>

<h3>Données associées : </h3>

