//
//  RDAutoLayoutHelper.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/06/01.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import UIKit

class RDAutoLayoutHelper {
    let view:UIView
    var layouts:[NSLayoutConstraint] = []
    
    init(view:UIView) {
        self.view = view
    }
    
    func center() -> RDAutoLayoutHelper {
        return centerX().centerY()
    }
    
    func centerX()-> RDAutoLayoutHelper {
        let centerX = NSLayoutConstraint(item: view,
                                         attribute: .centerX,
                                         relatedBy: .equal,
                                         toItem: view.superview,
                                         attribute: .centerX,
                                         multiplier: 1.0,
                                         constant: 0.0)
        layouts = layouts + [centerX]
        return self
    }
    
    func centerY()->RDAutoLayoutHelper {
        let centerY = NSLayoutConstraint(item: view,
                                         attribute: .centerY,
                                         relatedBy: .equal,
                                         toItem: view.superview,
                                         attribute: .centerY,
                                         multiplier: 1.0,
                                         constant: 0.0)
        layouts = layouts + [centerY]
        return self
    }
    
    func size(_ size:(CGFloat, CGFloat)) -> RDAutoLayoutHelper {
        return width(size.0).height(size.1)
    }
    
    func width(_ width:CGFloat) -> RDAutoLayoutHelper {
        let width = NSLayoutConstraint(item: view,
                                       attribute: .width,
                                       relatedBy: .equal,
                                       toItem: nil,
                                       attribute: .notAnAttribute,
                                       multiplier: 1.0,
                                       constant: width)
        layouts = layouts + [width]
        return self
    }
    
    func height(_ height:CGFloat) -> RDAutoLayoutHelper {
        let height = NSLayoutConstraint(item: view,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1.0,
                                        constant: height)
        layouts = layouts + [height]
        return self
    }
    
    func hundle() -> [NSLayoutConstraint] {
        return self.layouts
    }
    
    
}




