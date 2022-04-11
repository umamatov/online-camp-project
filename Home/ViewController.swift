//
//  ViewController.swift
//  Home
//
//  Created by Umidjon Mamatov on 09/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
   
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        didTapButton()
        
    }

        
   func didTapButton() {
      let tabBarVC = UITabBarController()
     
      let vc1 = UINavigationController(rootViewController: SearchViewController())
      let vc2 = UINavigationController(rootViewController: FavoritesViewController())
      let vc3 = UINavigationController(rootViewController: ProfileViewController())
      vc1.title = "Search"
      vc2.title = "Favorites"
      vc3.title = "Profile"
      tabBarVC.setViewControllers([vc1, vc2, vc3,], animated: false)
      
      guard let items = tabBarVC.tabBar.items else {
          return
      }
      
      let images = ["search_image", "favorites_image", "profile_image"]
      
      for x in 0..<items.count {
//          items[x].badgeValue = "10"
          items[x] .image = UIImage(named: images[x])
      }
      
      
      tabBarVC.modalPresentationStyle = .fullScreen
      present(tabBarVC, animated: true)
  }

     
}
    

