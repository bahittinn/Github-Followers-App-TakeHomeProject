//
//  PersistanceManager.swift
//  Github-Followers-App
//
//  Created by Bahittin on 12.10.2023.
//

import Foundation

enum PersistanceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let fovoritesData = defaults.object(forKey: Keys.favorites) as? Data else { return }
    }
}
