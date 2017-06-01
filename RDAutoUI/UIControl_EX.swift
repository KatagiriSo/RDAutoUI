//
//  UIControl_EX.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/06/01.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import UIKit


extension UIControl {
    func addTarget(event:UIControlEvents, observer:RDTargetObserver) -> RDTargetObserver {
        self.addTarget(observer, action: #selector(observer.selectorFunc(sender:)), for: event)
        return observer
    }
}
