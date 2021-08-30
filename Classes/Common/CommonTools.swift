//
//  CommonTools.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/1.
//

import Foundation

class CommonTools: NSObject {
    class func getImageURL(url col: String) -> URL{
        let imgUrl = URL(string: col)
        if let imgUrl = imgUrl as? URL  {
            return imgUrl
        }else{
            return URL(string: "http://www.07358.com")!
        }
    }
}
