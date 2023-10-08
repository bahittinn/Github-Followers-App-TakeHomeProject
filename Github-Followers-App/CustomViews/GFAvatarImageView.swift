//
//  GFAvatarImage.swift
//  Github-Followers-App
//
//  Created by Bahittin on 6.10.2023.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeHolderImage = UIImage(named: "avatar-placeholder")

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds      = true
        image              = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadImageFromUrl(from urlString: String) {
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _ , error in
            guard let self = self else { return }
            
            if error != nil { return }
            guard let data = data else { return }
            
            guard let image = UIImage(data: data) else { return }
            
            DispatchQueue.main.async {
                self.image = image
            }
            
        }
        task.resume()
    }
}
