//
//  Person.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let birthYear: Int
}

struct Walter: Decodable {
    let name: String
    let img: URL
    let status: String
}

