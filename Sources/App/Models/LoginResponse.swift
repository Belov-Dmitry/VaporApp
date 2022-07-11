//
//  LoginResponse.swift
//  
//
//  Created by Dmitry Belov on 10.07.2022.
//

import Foundation
import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: User
}

struct User: Content {
    let idUser: Int
    let userLogin, userName, userLastname: String
}


