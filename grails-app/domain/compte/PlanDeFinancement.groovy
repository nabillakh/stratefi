package compte

class PlanDeFinancement {

    
    // vision emploir ressources
    // ressources
    Float capaciteDAutofinancement
    Float cessionDImmobilisations
    Float augmentationCapital
    Float subventions
    Float emprunts
    
    
    // emploi
    Float dividendesVerses
    Float investissements
    Float remboursementCapitalDesEmprunts
    Float variationDuBFRE
      
    
    static constraints = {
        capaciteDAutofinancement nullable : true
        cessionDImmobilisations nullable : true
        augmentationCapital nullable : true
        subventions nullable : true
        emprunts nullable : true
        dividendesVerses nullable : true
        investissements nullable : true
        remboursementCapitalDesEmprunts nullable : true
        variationDuBFRE nullable : true
    }
}
