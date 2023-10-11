//
//  Date+Ext.swift
//  Github-Followers-App
//
//  Created by Bahittin on 11.10.2023.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        return dateFormatter.string(from: self)
    }
}
