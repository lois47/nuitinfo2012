package com.nuitinfo

class Utilisateur {

	transient springSecurityService

	// Attribut personnalis�
	String nom
	String prenom
	String email
	
	// Attribut généré par le plugin
	//String username
	String login
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		nom(required : true, blank: false)
		prenom(required: true, blank: false)
		email(email :true, blank:false, required: true)
		//username blank: false, unique: true
		login blank: false, unique: true
		password(password: true, blank: false)
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UtilisateurRole.findAllByUtilisateur(this).collect { it.role } as Set
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
	
	String toString(){
		prenom+" "+nom
	}
}
