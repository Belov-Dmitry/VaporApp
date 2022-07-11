//
//  RegisterResponse.swift
//  
//
//  Created by Dmitry Belov on 04.07.2022.
//

import Foundation
import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
