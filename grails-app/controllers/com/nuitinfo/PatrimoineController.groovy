package com.nuitinfo

class PatrimoineController {

    def index() {
		render(view: "index")
	}
	
	def getTimeLine() {
		render(view: "timelineData")
	}
}
