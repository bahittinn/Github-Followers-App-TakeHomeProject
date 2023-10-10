//
//  UserInfoVC.swift
//  Github-Followers-App
//
//  Created by Bahittin on 9.10.2023.
//

import UIKit

class UserInfoVC: UIViewController {

    let headerView = UIView()
    
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
    
    func layoutUI() {
        view.addSubview(headerView)
        
        headerView.backgroundColor = .lightGray
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            headerView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
