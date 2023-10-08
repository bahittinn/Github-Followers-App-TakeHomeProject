//
//  Follower.swift
//  Github-Followers-App
//
//  Created by Bahittin on 6.10.2023.
//

import Foundation

struct Follower: Codable, Hashable {
    var uuid = UUID().uuidString

    private enum CodingKeys : String, CodingKey { case login, avatarUrl }
    
    var login: String
    var avatarUrl: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
}
