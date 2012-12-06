package com.nuitinfo

class Format {

	String nom;
	
	static hasMany = [contenir_id : Contenir, patrimoine_id : Patrimoine];
	
	static constraints = {
		nom blank: false, unique: true
	}
}
