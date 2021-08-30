//
//  CFWNewsListController-loadData.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/3.
//

import UIKit
import KakaJSON

extension CFWNewsListController{
    func loadData(params:[String:String]){
        HttpTools.request(URLString: "v3/news/list", type: .GET, parameters: params) { resultModel in
            guard resultModel.code == 200 else{return}
            let result = resultModel.kj.JSONObject()
            let lpresult = result.kj.model(CFWNewsListResultModel.self)
            guard let resultModel = lpresult.result else{return}
            self.arrayModel = resultModel
//            
            self.tableView.reloadData()
            
        }
        
    }
}

