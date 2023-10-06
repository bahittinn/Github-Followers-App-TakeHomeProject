//
//  User.swift
//  Github-Followers-App
//
//  Created by Bahittin on 6.10.2023.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepose: Int
    var pulicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
