//
//  UIBarButtonItem-Extension.swift
//  EffectLive
//
//  Created by 袁向阳 on 16/12/8.
//  Copyright © 2016年 YXY.cn. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    class func creatItemByImage(imageName:String,highlightName:String,target:Any?,action:Selector) -> UIBarButtonItem {
        let button = UIButton(type: UIButtonType.custom)
        if !imageName.isEmpty {
            let image = UIImage(named: imageName)
            let highlightImage = UIImage(named: highlightName)
            button.setImage(image, for: UIControlState.normal)
            button.setImage(highlightImage, for: UIControlState.highlighted)
            button.frame = CGRect(x: 0, y: 0, width: image?.size.width ?? 40, height: image?.size.height ?? 40)
        } else {
            button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        }
        
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        let item = UIBarButtonItem(customView: button)
        return item
    }
    
}
