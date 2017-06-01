//
//  ViewController.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/10.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import UIKit

struct RDViewDidLoad:RDEvent {}


class RDViewController: UIViewController {
    
    struct RDViewDidLoad : RDEvent {}
    struct RDViewWillAppear : RDEvent {let animated:Bool}
    
    var observers:RDObservers = []
    var targetObservers:[RDTargetObserver] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tell(observers: observers, event: RDViewDidLoad())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        tell(observers: observers, event: RDViewWillAppear(animated: animated))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension RDViewController: RDObservable {
    func regist(event:RDEvent, command:@escaping RDCommand) -> RDObserver {
        let observer = RDObserver(event:event, command:command)
        
        self.observers.append(observer)
        observer.cancel = { [weak self] in
            if let target = self {
                target.observers = target.observers.filter { $0 != observer }
            }
        }
        return observer
    }
    
    func cancel(event: RDEvent) {
        self.observers = self.observers.filter { !$0.event.hit(event: event) }
    }
    
    func cancel() {
        self.observers = []
    }
}
