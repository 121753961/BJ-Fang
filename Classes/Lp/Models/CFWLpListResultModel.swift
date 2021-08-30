//
//  CFWLpListResultModel.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/2.
//

import UIKit
import KakaJSON

class CFWLpListResultModel: Convertible {
    var message: String = ""
    var msg: String = ""
    var code: Int = 0
    var result: [CFWLpModel]?
    
    required init(){}
}
