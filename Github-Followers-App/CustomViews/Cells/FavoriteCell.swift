//
//  FavoriteCell.swift
//  Github-Followers-App
//
//  Created by Bahittin on 13.10.2023.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    static let reuseID = "FavoriteCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let userNameLabel = GFTitleLabel(textAligment: .left, fontSize: 26)

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
