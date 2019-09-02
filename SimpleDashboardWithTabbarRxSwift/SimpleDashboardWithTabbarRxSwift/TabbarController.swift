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
    
    let secondVC = UIViewController()
    secondVC.view.backgroundColor = .gray
    secondVC.tabBarItem = UITabBarItem(title: "third", image: UIImage(named: "first"), selectedImage: UIImage(named: "first"))
    
    viewControllers?.append(secondVC)
    tabBar.barTintColor = UIColor.darkGray
    tabBar.tintColor = .white
    tabBarItem.badgeColor = .red
    
    
  }
  
  
}

extension UITabBarController: UITabBarControllerDelegate {
  
  public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    print("did select vc \(viewController)")
  }
  
  public func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    print("should select vc \(viewController)")

    ///animation
    
//    guard let fromView = selectedViewController?.view, let toView = viewController.view else {
//      return false // Make sure you want this as false
//    }
//
//    if fromView != toView {
//      UIView.transition(from: fromView, to: toView, duration: 0.3, options: [.transitionFlipFromLeft], completion: nil)
//    }
    
    
    return true
  }

}
