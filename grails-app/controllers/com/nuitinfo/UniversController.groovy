package com.nuitinfo

class UniversController {
	
    def listeCategories(Long id) {
		if(!id) {
			redirect(uri:'/')
		}
		Univers universInstance = Univers.findById(id)
		if(!universInstance) {
			redirect(uri:'/')
		}
		[universInstance: universInstance]
	}
}
