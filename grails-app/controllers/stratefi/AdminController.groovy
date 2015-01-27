package stratefi

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.apache.poi.ss.usermodel.Sheet; 
import org.apache.poi.ss.usermodel.Workbook; 
import org.apache.poi.ss.usermodel.WorkbookFactory; 
import sample.*
import org.grails.plugins.excelimport.*
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.codehaus.groovy.grails.web.json.JSONObject
import grails.converters.JSON


import stratefi.comparateur.*

class AdminController {
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    
    def static cellReporter = new DefaultImportCellCollector()
    def excelImportService
    def exportService
    def grailsApplication
    def friendlyUrlService

    def index() {}
//    
//    def export() {
//        List<Acteur> acteurs = Acteur.list()
//        
//        def headers = ['Name', 'Description', 'Valid Till', 'Product Number', 'Price']
//        def withProperties = ['name', 'description', 'validTill', 'productNumber', 'price.value']
//
//        new WebXlsxExporter().with { 
//            setResponseHeaders(response)
//            fillHeader(headers)
//            add(acteurs, withProperties)
//            save(response.outputStream)
//        }
//        
//    }
    
    def save() {
        
        println("dans save")
        
        Map CONFIG_TYPEACTEUR_COLUMN_MAP = [
          sheet:'Type acteur', 
          startRow: 1,
          columnMap:  [
                  'A':'nom',
                  'B':'numero',
            ]
        ]
        
        
        Map CONFIG_TYPEPRODUIT_COLUMN_MAP = [
          sheet:'type produit', 
          startRow: 1,
          columnMap:  [
                  'A':'nom',
                  'B':'numero',
            ]
        ]
        
        Map CONFIG_SECTEUR_COLUMN_MAP = [
          sheet:'secteur', 
          startRow: 1,
          columnMap:  [
                  'A':'nom',
                  'B':'numero',
            ]
        ]
        
        
        Map CONFIG_TYPEPROJET_COLUMN_MAP = [
          sheet:'Type Projet', 
          startRow: 1,
          columnMap:  [
                  'A':'nom',
                  'B':'numero',
            ]
        ]
        
        
        // import excel
        Map CONFIG_ACTEUR_COLUMN_MAP = [
          sheet:'Acteur', 
          startRow: 1,
          columnMap:  [
                  'A':'nom',
                  'B':'url',
                  'C':'type',
                  'D':'description',
                  'E':'numero',
                  'F':'facebook',
                  'G':'linkedin',
                  'H':'twitter',
                  'I':'googleplus',
                  'J':'slogan',
                  'J':'mail',
            ]
        ]        
        
        Map CONFIG_PRODUIT_COLUMN_MAP = [
          sheet:'produit', 
          startRow: 1,
          columnMap:  [
                  'A':'entreprise',
                  'C':'nom',
                  'D':'description',
                  'E':'type',
                  'F':'varInvest',
                  'G':'varPME',
                  'H':'fixeDebut',
                  'I':'fixeFin',
                  'J':'montantMin',
                  'K':'montantMax',
                  'L':'recurrent',
                  'B':'typeProjet',
                  'M':'secteurs',
            ]
        ]
         
        
        
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("file");
         Workbook workbook = WorkbookFactory.create(file.inputStream)
         
        
        
         def typesActeur = excelImportService.columns(workbook, CONFIG_TYPEACTEUR_COLUMN_MAP)
         def typesProduit = excelImportService.columns(workbook, CONFIG_TYPEPRODUIT_COLUMN_MAP)
         def typesProjet = excelImportService.columns(workbook, CONFIG_TYPEPROJET_COLUMN_MAP)
         def acteurs = excelImportService.columns(workbook, CONFIG_ACTEUR_COLUMN_MAP)
         def produits = excelImportService.columns(workbook, CONFIG_PRODUIT_COLUMN_MAP)
         def secteurs = excelImportService.columns(workbook, CONFIG_SECTEUR_COLUMN_MAP)
         
        
        typesActeur.each() {Map comp -> 
            def type = TypeActeur.findByNomSEO(friendlyUrlService.sanitizeWithDashes(comp.nom))
            if(!type) {
                type = new TypeActeur()        
            }
            
            type.nom = comp.nom
            type.numero = comp.numero
            type.nomSEO = friendlyUrlService.sanitizeWithDashes(comp.nom)
            type.save(failOnError : true)
            
        }
        secteurs.each() {Map comp -> 
            def secteur = Secteur.findByNomSEO(friendlyUrlService.sanitizeWithDashes(comp.nom))
            if(!secteur) {
                secteur = new Secteur()        
            }
            secteur.nom = comp.nom
            secteur.numero = comp.numero
            secteur.nomSEO = friendlyUrlService.sanitizeWithDashes(comp.nom)
            secteur.save(failOnError : true)            
        }
        typesProduit.each() {Map comp -> 
            def typeProduit = TypeProduit.findByNomSEO(friendlyUrlService.sanitizeWithDashes(comp.nom))
            if(!typeProduit) {
                typeProduit = new TypeProduit()        
            }
            typeProduit.nom = comp.nom
            typeProduit.numero = comp.numero
            typeProduit.nomSEO = friendlyUrlService.sanitizeWithDashes(comp.nom)
            typeProduit.save()
        }
        typesProjet.each() {Map comp ->
            def typeProjet = TypeProjet.findByNomSEO(friendlyUrlService.sanitizeWithDashes(comp.nom))
            if(!typeProjet) {
                typeProjet = new TypeProjet()        
            }
            typeProjet.nom = comp.nom
            typeProjet.numero = comp.numero
            typeProjet.nomSEO = friendlyUrlService.sanitizeWithDashes(comp.nom)
            typeProjet.save() 
        }
        acteurs.each() {Map comp -> 
            def typeActeur = TypeActeur.findByNumero(comp.type)
            def acteur = Acteur.findByNomSEO(friendlyUrlService.sanitizeWithDashes(comp.nom))
            if(!acteur) {
                acteur = new Acteur()        
            }
            
            acteur.nom = comp.nom
            acteur.description = comp.description 
            acteur.url = comp.url
            acteur.numero = comp.numero
            acteur.typeActeur = typeActeur
            
            acteur.facebook = comp.facebook
            acteur.googleplus = comp.googleplus
            acteur.linkedin = comp.linkedin
            acteur.twitter = comp.twitter
            acteur.slogan = comp.slogan
            
            acteur.nomSEO = friendlyUrlService.sanitizeWithDashes(comp.nom)
                        
            acteur.save()
            
        }
        produits.each() {Map comp ->
            def acteur = Acteur.findByNumero(comp.entreprise)
            def type = TypeProduit.findByNumero(comp.type)
            def produit = Produit.findByActeurAndTypeProduit(acteur,type)
            if(!produit) {
                produit = new Produit()
            }
            produit.acteur = acteur
            produit.typeProduit = type
            produit.nom = comp.nom
            produit.description = comp.description
            produit.coutVarInvestisseur = comp.varInvest
            produit.coutVarEntreprise = comp.varPME
            produit.coutFixeDebut = comp.fixeDebut
            produit.coutFixeFin = comp.fixeFin
            produit.montantMinimum = comp.montantMin
            produit.montantMaximum = comp.montantMax
            produit.recurrent = comp.recurrent
            
            String delims = "[/]";
            
            def typesProjets = []
            if(comp.typeProjet == 0) {
                typesProjets = TypeProjet.list()
            }
            else {
                String[] types = comp.typeProjet.split(delims);
                types.each() { num ->
                    def item = TypeProjet.findByNumero(num)
                    typesProjets.add(item)
                }
            }
            produit.typeProjet = typesProjets
            
            
            def secteur = []            
            if(comp.secteurs == 0) {
                secteur = Secteur.list()
            }
            else {
                String[] typeSecteur = comp.secteurs.split(delims);
                typeSecteur.each() { num ->
                    def item = Secteur.findByNumero(num)
                    secteur.add(item)
                }
            }
            
            produit.secteurs = secteur
            produit.save(failOnErro : true)
        }        
    }
}
