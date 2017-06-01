//
//  RDEvent.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/31.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import Foundation

protocol RDEvent {
    func hit(event:RDEvent) -> Bool
}

extension RDEvent {
    func hit(event:RDEvent) -> Bool {
        return event is Self
    }
}
