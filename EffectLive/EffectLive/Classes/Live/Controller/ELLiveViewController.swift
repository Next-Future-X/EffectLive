//
//  ELLiveViewController.swift
//  EffectLive
//
//  Created by 袁向阳 on 16/12/8.
//  Copyright © 2016年 YXY.cn. All rights reserved.
//

import UIKit

class ELLiveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavigationItemFunc()
    }
    
    fileprivate func setUpNavigationItemFunc() {
        let leftLogoItem = UIBarButtonItem.creatItemByImage(imageName: "home-logo", highlightName: "home-logo", target: self, action: #selector(ELLiveViewController.leftItemAction))
        navigationItem.leftBarButtonItem = leftLogoItem
        navigationController?.navigationItem.leftBarButtonItem = leftLogoItem
    }
    
    @objc private func leftItemAction() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
