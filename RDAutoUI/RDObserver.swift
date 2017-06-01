//
//  RDObserver.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/31.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import Foundation

class RDObserver : NSObject {
    let event:RDEvent
    let command: RDCommand
    var cancel:RDCancel? = nil
    init(event:RDEvent, command:@escaping RDCommand) {
        self.event = event
        self.command =  command
    }
}

class RDTargetObserver : NSObject {
    
    deinit {
        print("RDTargetObserver deinit")
    }
    
    let command: RDAnyCommand
    func selectorFunc(sender:Any?)->Void {
        command(sender)
    }
    
    init(command:@escaping RDAnyCommand) {
        self.command = command
    }
}
