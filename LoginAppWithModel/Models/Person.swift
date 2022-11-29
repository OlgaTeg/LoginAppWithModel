//
//  Person.swift
//  LoginApp
//
//  Created by Olga Tegza on 08.11.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "User", password: "12345", person: Person.getPerson())
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let image: String
    let age: String
    let city: String
    let lifePosition: String
    let favouriteQuote: String
    let interests: String
    
    static func getPerson() -> Person {
        Person(
            firstName: "Olga",
            lastName: "Tegza",
            image: "image",
            age: "39",
            city: "St.Petersburg",
            lifePosition: "Active and positive",
            favouriteQuote:  "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. - Oprah Winfrey",
            interests: "My family is my life, my heart and my soul. They are amazing. Without my family, I’m not complete. So, I’ll do everything within my power for them. I always try to learn somethin new. It is interesting to innovate in order to discover something new. Learning is fun, fulfilling, and will improve my life. I like cooking. I havie a lot fun making what my family love to eat and then we are eating it. I am fond of animals. I have two cats. I think nothing else in our life could supply us with more pleasant emotions than our pets. It is so pleasant to know that somebody needs you and loves you only for the fact that you exist. I like travelling. Traveling is like food for the soul which is necessary to de-stress and then get back to my day job with new renewed vigour. Also I like yoging and skiing. But most of all I like reading books. If the technological world collapsed tomorrow, I would have enough books to keep me entertained for years."
            )
    }
}

