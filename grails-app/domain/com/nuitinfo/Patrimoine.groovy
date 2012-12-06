package com.nuitinfo

class Patrimoine {

	String nom;
	static belongsTo = [categories : Categorie]
	static hasMany = [contenus : Contenu,patrimoines : Patrimoine, categories : Categorie]
    static constraints = {
		nom unique :true, blank:false
    }
}
