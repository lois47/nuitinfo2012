package com.nuitinfo

class Utilisateur {

	transient springSecurityService

	String nom
	String prenom
	String email
	String login
	String motdepasse
	boolean estActif
	boolean accountExpire
	boolean accountBloque
	boolean motdepasseExpire

	static constraints = {
		login blank: false, unique: true
		motdepasse blank: false
	}

	static mapping = {
		motdepasse column: '`motdepasse`'
	}

	Set<Role> getAuthorities() {
		UtilisateurRole.findAllByUtilisateur(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('motdepasse')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		motdepasse = springSecurityService.encodePassword(motdepasse)
	}
}
