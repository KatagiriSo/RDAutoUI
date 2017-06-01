//
//  RDSampleViewController.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/31.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import Foundation
import UIKit

class RDSampleViewController : RDViewController {
    override func awakeFromNib() {
        
        _ = regist(event: RDViewDidLoad()) { _ in
            print("viewDidLoad")
        }
        
        _ = regist(event: RDViewWillAppear(animated: true)) {_ in
            print("viewWillAppear")
        }
    }
    
    deinit {
        cancel()
    }
    
    @IBAction func buttonPushed(_ sender: Any) {
        let vc = RDViewController(nibName: nil, bundle: nil)
        vc.view.backgroundColor = UIColor.blue
        
        _ = vc.regist(event: RDViewDidLoad()) { _ in
            print("next view didload")
        }
        
        let button = UIButton(frame: CGRect.zero)
        
        button.setTitle("test", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        vc.view.addSubview(button)
        
        NSLayoutConstraint.activate( RDAutoLayoutHelper(view: button).size((100,100)).center().hundle())
        
        let ob = button.addTarget(event: .touchUpInside,
                         observer: RDTargetObserver { _ in
                            print("button pushed")
            })
        vc.targetObservers.append(ob)
        
        self.show(vc, sender: self)
    }
    
}


