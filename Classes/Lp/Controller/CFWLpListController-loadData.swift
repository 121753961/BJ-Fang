//
//  CFWLpListController-loadData.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/2.
//

import UIKit

extension CFWLpListController{
    func loadData(params:[String:String]){
        HttpTools.request(URLString: "v3/lp/list", type: .GET, parameters: params) { resultModel in
            guard resultModel.code == 200 else{return}
//            print(resultModel.result as! [Any])
            let result = resultModel.kj.JSONObject()
            let lpresult = result.kj.model(CFWLpListResultModel.self)
            guard let resultModel = lpresult.result else{return}
            self.arrayModel = resultModel
            
            self.tableView.reloadData()
            
        }
        
    }
}
