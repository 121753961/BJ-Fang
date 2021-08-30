//
//  Date-extension.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/30.
//

import UIKit

let dateFormat = DateFormatter()
let calendar = Calendar.current

extension Date{
    
    
    func bj_dateToTimeStr(time:String)->String{
        let tempTime : Int = Int(time)!
        let seconds: Int64 = Int64(tempTime)
               
        //判断是否是一分钟以内
        if seconds < 60 {
           return "刚刚"
        }
       
        //大于一分钟, 小于1小时
        if seconds < 3600 {
           return "\(seconds/60)分钟前"
        }

        //大于一小时, 小于1天
        if seconds < 3600 * 24 {
            return "\(seconds/3600)小时前"
        }
        
        //判断是否是昨天: 昨天 05: 05
        var formatStr = ""
        if calendar.isDateInYesterday(self) {
            formatStr = "昨天 HH:mm"
        } else {
            //判断是否是今年, 比昨天更早: `03-15 05: 05`
            //通过calendar取到时间元素
            let dateYear = calendar.component(.year, from: self) //self也就是新浪数据的时间年份
            let thisYear = calendar.component(.year, from: Date()) //当前时间的年份
            
            //今年
            if dateYear == thisYear {
                formatStr = "MM-dd HH:mm"
            }
            //往年
            else{
                formatStr = "yyyy-MM-dd HH:mm"
            }
            
        }
        dateFormat.locale = Locale(identifier: "str")
       dateFormat.dateFormat = formatStr
       
       return dateFormat.string(from: self)
        
    }
}
