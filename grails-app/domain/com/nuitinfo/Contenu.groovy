package com.nuitinfo

class Contenu {

	String nom;
	Date date_deb;
	Date date_fin;
	int persistence;
	
	static belongTo = [format_id : Format, contenir_id : Contenir];
	
	static hasMany = [patrimoine_id : Patrimoine];
	
	static constraints = {
		nom blank: false, unique: true
		date_deb blank: true, unique: false
		date_fin blank: true, unique: false
		persistence blank: false, unique: false
	}
}
