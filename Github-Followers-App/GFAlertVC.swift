//
//  GFAlertVC.swift
//  Github-Followers-App
//
//  Created by Bahittin on 6.10.2023.
//

import UIKit

class GFAlertVC: UIViewController {

    let containerView = UIView()
    let titleLabel    = GFTitleLabel(textAligment: .center, fontSize: 20)
    let messageLabel  = GFBodyLabel(textAligment: .center)
    let actionButton        = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    
    init(alertTitle: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        
        self.alertTitle = alertTitle
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
