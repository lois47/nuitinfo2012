package com.nuitinfo

class Patrimoine {

	String nom;
	
	static searchable = true
	static hasMany = [contenus : Contenu,patrimoines : Patrimoine, cat_pats : Cat_Pat, pat_cat : Pat_Cont]
    static constraints = {
		nom unique :true, blank:false
    }
	
	String toString(){
		nom
	}
}
