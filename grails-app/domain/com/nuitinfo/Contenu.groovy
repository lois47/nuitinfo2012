package com.nuitinfo

class Contenu {

	String nom;
	Date date_deb;
	Date date_fin;
	int persistence;
	Format format;
	
	static hasMany = [pat_cont : Pat_Cont]
	
	static constraints = {
		nom blank: false, unique: true
		date_deb blank: true, unique: false
		date_fin blank: true, unique: false
		persistence blank: false, unique: false
	}
}
