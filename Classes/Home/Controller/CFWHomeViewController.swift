//
//  CFWHomeViewController.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/29.
//

import UIKit
import Alamofire

class CFWHomeViewController: UIViewController {

    weak var textField: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    var homeDataModel:CFWHomeDataModel!
    
    var lpList: [CFWLpModel] = []
    var newsList :[CFWNewsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
        
        print("CFWHomeViewController")
        self.setUI()
        
        self.myTableView.register(UINib(nibName: kLpListCellID, bundle: nil), forCellReuseIdentifier: kLpListCellID)
        
        self.myTableView.register(UINib(nibName: kRecommendLpHaederCellID, bundle: nil), forCellReuseIdentifier: kRecommendLpHaederCellID)
        
        // 请求数据
        loadData()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MAPK:- 网络数据的请求
extension CFWHomeViewController{
    fileprivate func loadData(){
        HttpTools.request(URLString: "v3/index/getindexdata", type: .GET, parameters: nil) { reslutModel in
            guard let reslutAny = reslutModel.result as? [String:Any] else {return}
            let HomeModel = reslutAny.kj.model(CFWHomeDataModel.self);
            self.homeDataModel = HomeModel
            self.lpList = HomeModel.loupan ?? []
            self.newsList = HomeModel.xinwen ?? []
            self.myTableView.reloadData()
            print(reslutModel.message)
            print(reslutModel.code)
        }
    }
}


