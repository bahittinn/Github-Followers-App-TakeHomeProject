//
//  UserInfoVC.swift
//  Github-Followers-App
//
//  Created by Bahittin on 9.10.2023.
//

import UIKit

class UserInfoVC: UIViewController {

    var follower: Follower!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = follower.login
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        
        navigationItem.rightBarButtonItem = doneButton
        
        getUserInfo()
    }
    
    func getUserInfo() {
        NetworkManager.shared.getUserInfo(for: follower.login) { response in
            switch response {
            case .success(let user):
                print(user)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
