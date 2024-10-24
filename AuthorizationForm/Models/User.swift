//
//  User.swift
//  AuthorizationForm
//
//  Created by Yaroslav Malygin on 22.10.2024.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(userName: "admin", password: "1111", person: Person.getPerson())
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let city: String
    let company: String
    let position: String
    let sport: String
    let animal: String
    let travel: String
    let cooking: String
    let learning: String
    
    static func getPerson() -> Person {
        Person(
            firstName: "Yaroslav",
            lastName: "Malygin",
            age: 32,
            city: "Moscow",
            company: "SuperJob",
            position: "iOS QA",
            sport: "I like play football ⚽️" ,
            animal: "I love cats 🐈",
            travel: "I like to travel 🧭",
            cooking: "I like to cook 🧑‍🍳",
            learning: "I like to learn new things👨🏻‍💻"
        )
    }
}
