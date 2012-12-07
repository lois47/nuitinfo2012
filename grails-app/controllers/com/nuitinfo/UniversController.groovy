package com.nuitinfo

class UniversController {
	
    def listeCategories(Long id) {
		if(!id) {
			redirect(uri:'/')
			return
		}
		Univers universInstance = Univers.findById(id)
		if(!universInstance) {
			redirect(uri:'/')
			return
		}
		[universInstance: universInstance]
	}
}
