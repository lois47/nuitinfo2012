package com.nuitinfo

class UniversService {

    def serviceMethod() {

    }
	

	def Categorie[] getBestCategrories(id) {
		Categorie [] c;
		Univers univers = Univers.findById(id);
		c= new Categorie[univers.categories.size()];
		int i = 0
		for (Categorie cat : univers.categories) {
			c[i] = cat;
			i++;
			if(i>4){
				return c
			}
		}
		c;
		
	}

	Univers[] getUniverses() {
       Univers.list(sort:"name",order : "asc") as Univers[]
    }

}
