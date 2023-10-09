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
        print(follower.login)
        view.backgroundColor = .systemBackground
    }
}
