//
//  NetworkManager.swift
//  Github-Followers-App
//
//  Created by Bahittin on 6.10.2023.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseUrl = "https://api.github.com"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completion: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = "\(baseUrl)/users/\(username)/followers?per_page=100&page\(page)"
        
        guard let url = URL(string: endpoint) else {
            completion(nil, "This username created an invalid request. Please try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completion(nil, "Unable to complete your request. Please check your internet connection")
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, "Invalid response from the server. Please try again.")
                return
            }
            
            guard let data = data else {
                completion(nil, "The data received from server was invalid. Please try again")
                return
            }
            
            do {
                let jsonData = try JSONDecoder().decode([Follower].self, from: data)
                print("jsondata \(jsonData)")
                completion(jsonData, "Data recevied")
            } catch {
                completion(nil, "Error from the catch data")
            }
        }
        
        task.resume()
    }
}
