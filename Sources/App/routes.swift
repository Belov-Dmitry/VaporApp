import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!!!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let myAuthController = MyAuthController()
    app.post("register", use: myAuthController.register)
    
    let loginController = LoginController()
    app.post("login", use: loginController.login)

    try app.register(collection: TodoController())
}


