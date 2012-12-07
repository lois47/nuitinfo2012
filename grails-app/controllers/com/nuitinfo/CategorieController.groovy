package com.nuitinfo

class CategorieController {

    def listePatrimoines(Long id) {
		Categorie categorie = Categorie.findById(id)
		if(!categorie) {
			// TODO redirect to page d'accueil
		}
		[categorie: categorie]
	}
}
