//
//  LoginRequest.swift
//  
//
//  Created by Dmitry Belov on 10.07.2022.
//

import Foundation
import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
    //var cookie: String? = ""
}
