//
//  TabbarController.swift
//  SimpleDashboardWithTabbarRxSwift
//
//  Created by Viennarz on 14/06/2019.
//  Copyright © 2019 VVCSoft. All rights reserved.
//

import Foundation
import UIKit

class MainTabbarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    delegate = self
    
    let thirdVC = UIViewController()
    thirdVC.view.backgroundColor = .gray
    thirdVC.tabBarItem = UITabBarItem(title: "third", image: UIImage(named: "first"), selectedImage: UIImage(named: "first"))
    
    viewControllers?.append(thirdVC)
    tabBar.barTintColor = UIColor.purple
    tabBar.tintColor = .white
    

  }
  
}

extension UITabBarController: UITabBarControllerDelegate {
  
  public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    print("did select vc \(viewController)")
  }
  
  public func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    print("should select vc \(viewController)")
    return true
  }

}
