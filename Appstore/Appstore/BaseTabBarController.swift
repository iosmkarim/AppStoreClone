//
//  BaseTabBarController.swift
//  Appstore
//
//  Created by MDREZAUL KARIM on 11/24/21.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    //MARK:- LifyCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redVC = UIViewController()
        redVC.view.backgroundColor = .white
        redVC.navigationItem.title = "APPS"
        let redNavController = UINavigationController(rootViewController: redVC)
        redNavController.tabBarItem.title = "Apps"
        redNavController.navigationBar.prefersLargeTitles = true
        redNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        
        let yellowVC = UIViewController()
        yellowVC.view.backgroundColor = .white
        yellowVC.navigationItem.title = "SEARCH"
        let yellowNavController = UINavigationController(rootViewController: yellowVC)
        yellowNavController.tabBarItem.title = "Search"
        yellowNavController.navigationBar.prefersLargeTitles = true
        yellowNavController.tabBarItem.image = #imageLiteral(resourceName: "search")
        
        viewControllers = [
            redNavController, yellowNavController
        ]
    }
}
