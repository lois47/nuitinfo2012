package com.nuitinfo

class UniversController {
	
    def listeCategories(Long id) {
		Univers universInstance = Univers.findById(id)
		if(!universInstance) {
			// TODO redirect to page d'accueil
		}
		[universInstance: universInstance]
	}
}
