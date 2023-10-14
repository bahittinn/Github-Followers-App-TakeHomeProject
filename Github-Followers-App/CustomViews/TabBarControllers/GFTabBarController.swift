//
//  GFTabBarController.swift
//  Github-Followers-App
//
//  Created by Bahittin on 14.10.2023.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbarApperance = UITabBarAppearance()
        tabbarApperance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabbarApperance
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavoritesNC()    ]
    }
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }
    
    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        
        let tabbarApperance = UITabBarAppearance()
        tabbarApperance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabbarApperance
        UITabBar.appearance().tintColor = .systemGreen
    
        tabbar.viewControllers = [createSearchNC(), createFavoritesNC()]
        
        return tabbar
    }
}
