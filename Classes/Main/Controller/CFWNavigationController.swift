//
//  CFWNavigationController.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/29.
//

import UIKit

class CFWNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar .setBackgroundImage(UIImage(named: "navBar"), for: UIBarMetrics.default)
        self.navigationBar.tintColor = .white
        self.navigationBar.barStyle = .black

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if(viewControllers.count > 0){
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
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
