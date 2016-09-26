//
//  RoarNavigationStyleController.swift
//  Roar
//
//  Created by Pascal Sturmfels on 9/26/16.
//  Copyright © 2016 1AM. All rights reserved.
//

import UIKit

class RoarNavigationStyleController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.barTintColor = UIColor(red: 253.0/255.0, green: 108.0/255.0, blue: 79.0/255.0, alpha: 1.0)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }
}

class RoarSettingsNavigationController: RoarNavigationStyleController {
    weak var parentTabBarController: RoarTabBarController!
    
    var settingsButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsButton = UIBarButtonItem(image: UIImage(named: "settingsIcon"), style: UIBarButtonItemStyle.plain, target: self.parentTabBarController, action: #selector(RoarTabBarController.presentSettings))
        self.viewControllers[0].navigationItem.leftBarButtonItem = settingsButton
    }
}

