package com.nuitinfo

class Categorie {

	String nom
	
	static searchable = true
	static belongsTo = [univers: Univers]
	static hasMany = [cat_pats : Cat_Pat]
	
	Categorie categorieMere
	Utilisateur createur
	
    static constraints = {
		nom (unique : true, blank : false)
    }
}
