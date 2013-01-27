class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/about"(view: "/about")

		"/"(controller: "index")
		"500"(view:'/error')
	}
}
