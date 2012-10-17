package com.nuitinfo

class Role {

	String libelle
	Boolean estAdmin

	static mapping = {
		cache true
	}

	static constraints = {
		libelle blank: false, unique: true
	}
}
