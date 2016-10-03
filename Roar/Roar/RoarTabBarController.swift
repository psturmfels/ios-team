//
//  RoarTabBarController.swift
//  Roar
//
//  Created by Pascal Sturmfels on 9/25/16.
//  Copyright © 2016 1AM. All rights reserved.
//

import UIKit

class RoarTabBarController: UITabBarController, UITabBarControllerDelegate {
    var tableNavigationController: RoarTableNavigationController = RoarTableNavigationController()
    var settingsNavigationController: RoarSettingsNavigationController = RoarSettingsNavigationController()
    var connectivityController: RoarConnectivityController = RoarConnectivityController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        self.tabBar.barTintColor = UIColor(red: 253.0/255.0, green: 108.0/255.0, blue: 79.0/255.0, alpha: 1.0)
        self.tabBar.tintColor = UIColor.white
        
        tableNavigationController.parentTabBarController = self
        settingsNavigationController.parentTabBarController = self
        
        tableNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.mostRecent, tag: 0)
        settingsNavigationController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "settingsIcon"), tag: 1)
        
        tableNavigationController.connectivityController = connectivityController
        
        self.viewControllers = [tableNavigationController, settingsNavigationController]
        self.selectedIndex = 0
    }
}
