package com.nuitinfo

class Univers {

	String nom;
	
	static hasMany = [categories : Categorie]
	
    static constraints = {
		nom (unique: true, blank : false)
    }
	
	String toString(){
		nom
	}
}
