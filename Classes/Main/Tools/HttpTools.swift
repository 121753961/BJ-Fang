//
//  HttpTools.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/30.
//

import UIKit
import Foundation
import Alamofire

enum MethodType {
    case GET
    case POST
}

typealias NetWorkRequestResult = Result<Data,Error>
typealias NetWorkRequestCompletion = (NetWorkRequestResult) -> Void

private let BaseURL = "https://api.07358.com/"


class HttpTools {
    static let shareInstance = HttpTools()
    private init(){}
    
    struct errorResult:Error {
        
    }
    
    class func request(URLString : String, type:MethodType,parameters:[String:Any]? = nil,finishedCallback:@escaping(_ result:CFWCommonResultModel)->()){
        let method = type == .GET ? HTTPMethod.get : HTTPMethod.post
        AF.request(BaseURL+URLString,
                   method: method,
                   parameters: parameters,
                   requestModifier: {$0.timeoutInterval = 15})
                .responseJSON { response in
                    guard let result = response.value else{
                        print(response.error as Any)
                        return;
                    }
                    guard let resultDict = result as? [String :Any] else {return}
                    let resultModel = resultDict.kj.model(CFWCommonResultModel.self)
                    finishedCallback(resultModel)
                }
                   
                   
    }
    
//    @discardableResult
    func get(url: String, params:Parameters?, completion:@escaping(Result<Data,Error>)->Void)->DataRequest{
        AF.request(BaseURL+url,
                   parameters: params,
                   requestModifier: {$0.timeoutInterval = 15})
            .responseJSON { response in
                switch response.result{
                case let .success(data):
                    guard let dict = try? data else{return}
                    // 将数据转为字典
                    print(dict)
                case let .failure(error):
                    print(error)
                }
                guard let dict = response.value else{return}
                // 将数据转为字典
                print(dict)
                
            }
//            .responseData { response in
//                switch response.result{
//                case let .success(data):completion(.success(data))
//                case let .failure(error):completion(.failure(error))
//                }
//            }
    }

}
