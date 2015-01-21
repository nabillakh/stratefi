package stratefi.comparateur

class Image {

    byte[] filePayload
    String fileType  //Optional
    String fileName //Optional
    static belongsTo = [acteur: Acteur]
    
    static constraints = {
        filePayload(nullable:true, maxSize:1073741824) // max of 4GB file for example
        fileType(blank:true, nullable:true)
        fileName(blank:true, nullable:true)
        acteur(blank:true, nullable:true)
    }
    
}
