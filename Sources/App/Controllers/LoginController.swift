//
//  LoginController.swift
//  
//
//  Created by Dmitry Belov on 10.07.2022.
//

import Foundation
import Vapor
class LoginController {
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = LoginResponse (
            result: 1,
            user: User (
                idUser: 12345,
                userLogin: "GeekBrains",
                userName: "John",
                userLastname: "Doe"
            )
        )
      
        return req.eventLoop.future(response)
    }
}
