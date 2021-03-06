//
//  RDObservable.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/31.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import Foundation

protocol RDObservable {
    func regist(event:RDEvent, command:@escaping RDCommand) -> RDObserver
    func cancel(event:RDEvent)
    func cancel()
}
