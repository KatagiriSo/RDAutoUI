//
//  RDObservers.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/31.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import Foundation

typealias RDObservers = [RDObserver]

func find(observers:RDObservers, event:RDEvent) -> RDObservers {
    return observers.filter { $0.event.hit(event: event) }
}

func tell(observers:RDObservers, event:RDEvent) {
    find(observers:observers , event: event).forEach { $0.command(event) }
}
