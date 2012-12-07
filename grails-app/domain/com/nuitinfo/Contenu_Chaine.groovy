package com.nuitinfo

class Contenu_Chaine {

	String chaine;
	Patrimoine patrimoine;
	Contenu contenu;
    static constraints = {
		chaine blank : false ; unique : false
    }
}
