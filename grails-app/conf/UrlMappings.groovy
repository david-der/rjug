class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/about"(view: "/about")

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
