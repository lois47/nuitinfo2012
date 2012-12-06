package com.nuitinfo

class Categorie {

	String nom
	
	static belongsTo = [univers: Univers]
	static HasMany = [patrimoines : Patrimoine]
	
	Categorie categorieMere
	Utilisateur createur
	
    static constraints = {
		nom (unique : true, blank : false)
    }
}
