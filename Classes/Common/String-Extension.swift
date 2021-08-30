//
//  String-Extension.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/3.
//

import Foundation


extension String{
    static func imageHandle(str : String) -> String {
        guard !str .isEmpty else { return "" }
        var tempStr = str
        if tempStr.hasPrefix("http"){
            tempStr = tempStr.replacingOccurrences(of: ".com//", with: ".com/")
            return tempStr
        }else{
            tempStr = tempStr.replacingOccurrences(of: "|/", with: "/")
            tempStr = tempStr.replacingOccurrences(of: "|", with: "")
            tempStr = tempStr.replacingOccurrences(of: "../../", with: "/")
            tempStr = "/"+tempStr
            tempStr = tempStr.replacingOccurrences(of: "///", with: "/")
            tempStr = tempStr.replacingOccurrences(of: "//", with: "/")
            tempStr = kPicHost + tempStr
            return tempStr
        }
    }
}
