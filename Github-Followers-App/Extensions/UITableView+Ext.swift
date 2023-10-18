//
//  UITableView+Ext.swift
//  Github-Followers-App
//
//  Created by Bahittin on 17.10.2023.
//

import UIKit

extension UITableView {
    func reloadTableViewMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
