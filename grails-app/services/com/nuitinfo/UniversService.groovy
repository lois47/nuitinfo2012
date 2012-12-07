package com.nuitinfo

class UniversService {

    def serviceMethod() {

    }
	
	Univers[] getUniverses() {
       Univers.list(sort:"name",order : "asc") as Univers[]
    }
}
