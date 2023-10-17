//
//  UIView+Ext.swift
//  Github-Followers-App
//
//  Created by Bahittin on 17.10.2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            view.addSubview(view)
        }
    }
}
