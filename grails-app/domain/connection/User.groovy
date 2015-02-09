package connection

import entreprises.*

class User {

	transient springSecurityService

	String username //mail
	String password
    
        String nom
        String prenom    
    
        Entreprise entreprise
    
       	boolean enabled = true
	boolean accountExpired =false
	boolean accountLocked = false
	boolean passwordExpired 

	static constraints = {
		username blank: false, unique: true
		password blank: false
                entreprise nullable : true
                nom nullable : true
                prenom nullable : true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Authority> getAuthorities() {
		UserAuthority.findAllByUser(this).collect { it.authority } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
