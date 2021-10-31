//
//  UserDataModel.swift
//  SobolevAA_HW2.3
//
//  Created by Андрей Соболев on 30.10.2021.
//

import Foundation
import QuartzCore

struct UserData {
    var login: String
    var password: String
    var userName: String
    var userFamily: String
    var birthDay: String // 1 экран
    var hobbys: [Hobby]  // 2 экран
    var animal: Animal   // 3 экран
}

struct Hobby {
    var zagolovok: String
    var text: String
}
		
enum Animal: Character {
    case cat = "🐈"
    case dog = "🦮"
    case pig = "🐖"
    case seaPig = "🐹"
    case mouse = "🐀"
}

extension UserData {
    static func getUserData() -> UserData {
        return
        (UserData(login: "User",
                 password: "Password",
                 userName: "Андрей",
                 userFamily: "Соболев",
                 birthDay: "08.04.1972",
                 hobbys: [
                    Hobby(zagolovok: "Велоезда.",
                          text: "Люблю кататься на велосипеде")
                         ],
                 animal: .seaPig
                )
        )
        
    }
}
