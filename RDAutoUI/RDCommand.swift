//
//  RDCommand.swift
//  RDAutoUI
//
//  Created by 片桐奏羽 on 2017/05/31.
//  Copyright © 2017年 rodhos. All rights reserved.
//

import Foundation

typealias RDAnyCommand = (Any?) -> Void
typealias RDCommand = (RDEvent) -> Void
typealias RDCancel = ()->Void
