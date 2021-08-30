//
//  CFWNewsListResultModel.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/3.
//

import UIKit
import KakaJSON

class CFWNewsListResultModel: Convertible{
    var message: String = ""
    var msg: String = ""
    var code: Int = 0
    var result: [CFWNewsModel]?
    
    required init(){}

}
