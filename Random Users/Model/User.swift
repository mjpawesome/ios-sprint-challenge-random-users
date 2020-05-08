//
//  User.swift
//  Random Users
//
//  Created by Mark Poggi on 5/8/20.
//  Copyright © 2020 Erica Sadun. All rights reserved.
//

import Foundation

struct UserResult: Codable {
    let results: [User]
}

struct User: Codable {
    var name: Name
    var email: String
    var phone: String
    var thumbnail: URL
    var large: URL

    static var jsonDecoder: JSONDecoder {
        let result = JSONDecoder()
        result.keyDecodingStrategy = .convertFromSnakeCase
        return result
    }
}

struct Name: Codable {
    var first: String
    var last: String
}

