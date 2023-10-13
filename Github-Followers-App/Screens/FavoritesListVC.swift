//
//  FavoritesListVC.swift
//  Github-Followers-App
//
//  Created by Bahittin on 5.10.2023.
//

import UIKit

class FavoritesListVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        PersistenceManager.retrieveFavorites { response in
            switch response {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
}
