//
//  CFWLpListController-UI.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/3.
//

import UIKit

extension CFWLpListController{
    func setUI(){
        getNavigationView()
        getLeftBarItem()
        getRightBarItem()
        
    }
    
    func getNavigationView()->Void{
        print("getHomeNavigationView")
        let textField = UILabel(frame: CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width - 160, height: 28))
        textField.layer.cornerRadius = 4;
        textField.layer.masksToBounds = true;
        textField.backgroundColor = .white;
        textField.text = " 楼盘名、地段名..."
        textField.textColor = .lightGray
        textField.font = .systemFont(ofSize: 13)
        
        self.navigationItem.titleView = textField
    }
    
    func getLeftBarItem() -> Void {
        let leftBtn = UIButton()
        leftBtn.frame = CGRect(x: 0, y: 0, width: 32, height: 30)
        leftBtn.setTitle("新 房", for:.normal)
//        leftBtn.setImage(UIImage(named: "navItem_icon_2"), for: .normal)
//        leftBtn.setImage(UIImage(named: "navItem_icon_2"), for: .highlighted)
        leftBtn.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        let leftBtnItem = UIBarButtonItem(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = leftBtnItem;
//        CGSize titleSize = self.pureButton.titleLabel.bounds.size;
//        CGSize imageSize = self.pureButton.imageView.bounds.size;
//        leftBtn.titleEdgeInsets = UIEdgeInsetsMake(0, -leftBtn.imageView.frame.width, 0, leftBtn.frame.width+4);
//        leftBtn.imageEdgeInsets = UIEdgeInsetsMake(0, leftBtn.titleLabel.bounds.size.width+4, 0, -leftBtn.titleLabel.bounds.size.width)
    }
    
    func getRightBarItem() -> Void {
        let rightBtn = UIButton()
        rightBtn.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        rightBtn.setTitle("搜索", for:.normal)
        rightBtn.setImage(UIImage(named: "search_btnNav_icon"), for: .normal)
        rightBtn.setImage(UIImage(named: "search_btnNav_icon"), for: .highlighted)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        let rightBtnItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = rightBtnItem;
    }
    
}
