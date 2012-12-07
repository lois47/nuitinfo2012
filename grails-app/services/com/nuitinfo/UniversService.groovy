package com.nuitinfo

class UniversService {

    def serviceMethod() {

    }
	
	def Categorie[] getBestCategrories(id) {
		Univers univers = Univers.findById(id);
		for (Categorie cat : univers.categories) {
			
		}
		
	}
}
