import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message" : drop.localization[req.lang, "welcome", "title"],
        "title" : "HOME PAGE"
    ])
}
drop.get("/home"){ req in
    return try drop.view.make("welcome",[
    	"message" : drop.localization[req.lang, "welcome", "title"],
        "title" : "HOME PAGE"        
    ])
}
drop.get("/test"){ req in
    return try drop.view.make("test",[
    	"message" : "otra VISTA",
        "title" : "HOME PAGE"        
    ])
}
drop.resource("posts", PostController())

drop.run()
