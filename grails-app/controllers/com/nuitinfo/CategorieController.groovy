package com.nuitinfo

class CategorieController {

    def listePatrimoines(Long id) {
		if(!id) {
			redirect(uri:'/')
			return
		}
		Categorie categorie = Categorie.findById(id)
		if(!categorie) {
			redirect(uri:'/')
			return
		}
		[categorie: categorie]
	}
}
