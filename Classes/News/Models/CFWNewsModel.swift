//
//  CFWNewsModel.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/2.
//

import Foundation
import KakaJSON

class CFWNewsModel: Convertible {
    var title: String = ""
    var article_common_id: String = ""
    var name: String = ""
    var addDate: String = ""
    var coverImage: String = ""
    var coverImageUrl:String{
        get{
            print("coverImageUrl -- get")
            return String.imageHandle(str: coverImage)
        }
    }
    
    required init(){}
}
