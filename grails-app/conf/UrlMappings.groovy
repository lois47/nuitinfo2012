class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/index"(controller:"index", action:"index")
		"/"(controller:"index", action:"index")
		"500"(view:'/error')
	}
}
