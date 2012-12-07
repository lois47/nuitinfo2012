package com.nuitinfo

class CategorieController {

    def listePatrimoines(Long id) {
		if(!id) {
			redirect(uri:'/')
		}
		Categorie categorie = Categorie.findById(id)
		if(!categorie) {
			redirect(uri:'/')
		}
		[categorie: categorie]
	}
}
