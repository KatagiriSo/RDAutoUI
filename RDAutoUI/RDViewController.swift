//
//  ViewController.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/10.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import UIKit

struct RDViewDidLoad:RDEvent {}

class RDSampleViewController : RDViewController {
    override func awakeFromNib() {
        
        regist(event: RDViewDidLoad()) { _ in
            print("viewDidLoad")
        }
        
        regist(event: RDViewWillAppear(animated: true)) {_ in
            print("viewWillAppear")
        }
        
    }
}


class RDViewController: UIViewController,RDObservable {
    
    struct RDViewDidLoad : RDEvent {}
    struct RDViewWillAppear : RDEvent {let animated:Bool}
    
    var observers:RDObservers = []
    
    func regist(event:RDEvent, command:@escaping RDCommand) -> RDCancel {
        let observer = RDObserver(event: event, command:command, token
        
        self.observers.append(observer)
        return {
            self.observers.rem
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tell(obserbvers: observers, event: RDViewDidLoad())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        tell(obserbvers: observers, event: RDViewWillAppear(animated: animated))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//struct RDObserver2 {
//    let token:String
//    let event:RDEvent
//    let command:RDCommand
//    init(event:RDEvent, command:RDCommand) {
//        self.event = event
//        self.command = command
//        self.token =
//
//    }
//}


