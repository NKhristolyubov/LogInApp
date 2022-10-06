//
//  File.swift
//  LogInApp
//
//  Created by Николай Христолюбов on 04.10.2022.
//

struct User {
    let user: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            user: "Lu",
            password: "12345",
            person: Person(
                name: "Nikolay",
                surname: "Khristolyubov",
                age: 28)
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
}
