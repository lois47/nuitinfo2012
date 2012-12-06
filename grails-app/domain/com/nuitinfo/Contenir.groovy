package com.nuitinfo

class Contenir {

	Date insertTime;
	String contenu;
	
	static belongsTo = [insertBy : Utilisateur];
	
	static hasMany = [patrimoine_id : Patrimoine, format_id : Format];
	
	static constraints = {
		insertTime blank: false, unique: false
		contenu blank: false, unique: true
	}
}
