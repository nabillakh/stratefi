package entreprises

import connection.*

class Document {
   String filename
    byte[] filedata
    Date uploadDate = new Date()
    
    User expediteur
    
    boolean prive
    
    static constraints = {
        filename(blank:false,nullable:false)
        filedata(blank: true, nullable:true, maxSize:1073741824)
        expediteur(blank: true, nullable:true)
        prive(blank: true, nullable:true)
    }
}
