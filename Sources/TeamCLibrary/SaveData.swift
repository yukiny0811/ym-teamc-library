//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import Defaults
import UIKit
import EasyUtilities

extension Defaults.Keys {
    public static let yoyakuDatas = Key<[YoyakuData]>("yoyakuDatas", default: [])
}

extension Util {
    
    public static func newYoyaku(yoyakuData: YoyakuData) {
        Defaults[.yoyakuDatas].append(yoyakuData)
    }
    
    public static func getNearestYoyaku() -> YoyakuData? {
        Defaults[.yoyakuDatas].sorted{ $0.farm.date < $1.farm.date }.first
    }
}
