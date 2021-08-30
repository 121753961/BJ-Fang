//
//  CFWNewsHomeController.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/3.
//

import UIKit



class CFWNewsHomeController: UIViewController,CFWTTHeadViewDelegate,CFWTTPageViewControllerDelegate {
    
    var headView:CFWTTHeadView!
    var pagevc:CFWTTPageViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var attri = CFWTTHeadTextAttribute()
        attri.needBottomLine = true
        attri.defaultTextColor = UIColor.hexColor(hex: "F5F4F9")
        attri.defaultFontSize = 15
        attri.selectedFontSize = 18
        attri.itemWidth = 75
        
        //创建headView
        let titles = ["全部","楼盘动态","工程进度","土拍资讯","国内动态","看房日记","专题报道","二手百科"]
        headView = CFWTTHeadView (frame: CGRect (x: 0, y: 0, width: UIScreen.main.bounds.width, height: 35), titles: titles, delegate: self ,textAttributes:attri)
        
        navigationItem.titleView = headView;
        
        //创建TTPageViewController
        let vcs = [CFWNewsListController(),CFWNewsListController(),CFWNewsListController(),CFWNewsListController(),CFWNewsListController(),CFWNewsListController(),CFWNewsListController(),CFWNewsListController(),]
        
        let frame = CGRect (x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        pagevc = CFWTTPageViewController.init(controllers: vcs, frame: frame, delegate: self)
        
        //添加到当前控制器视图
        self.addChild(pagevc)
        self.view.addSubview(pagevc.view)
        // Do any additional setup after loading the view.
    }
    
    /////Delegate methods
        func tt_headViewSelectedAt(_ index: Int) {
            pagevc.scrollToPageAtIndex(index)
        }
        
        func tt_pageControllerSelectedAt(_ index: Int) {
            headView.scrollToItemAtIndex(index)
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
