//
//  CFWCommonResultModel.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/1.
//

import Foundation
import KakaJSON

class CFWCommonResultModel: Convertible {
    var message: String = ""
    var msg: String = ""
    var code: Int = 0
    var result: AnyObject?
    
    required init(){}
}
