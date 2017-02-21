//
//  ELMainTabBarController.swift
//  EffectLive
//
//  Created by 袁向阳 on 16/12/7.
//  Copyright © 2016年 YXY.cn. All rights reserved.
//

import UIKit

class ELMainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChileders()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func addChileders() {
        setUpChildController(name: "Live")
        setUpChildController(name: "Rank")
        setUpChildController(name: "Discovery")
        setUpChildController(name: "Profile")
    }
    fileprivate func setUpChildController(name:String) {
        let navVC = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController() ?? UINavigationController()
        addChildViewController(navVC)
    }
}
