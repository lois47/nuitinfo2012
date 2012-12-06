package com.nuitinfo

class Format {

	String nom;
	
	static hasMany = [contenu : Contenu];
	
	static constraints = {
		nom blank: false, unique: true
	}
}
