//
//  CFWWebViewController.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/7/3.
//

import UIKit
import WebKit

class CFWWebViewController: UIViewController,WKNavigationDelegate {
    
    var urlStr:String! = nil
    
    var webView = WKWebView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建wkwebView
        let webView = WKWebView(frame: CGRect(x: 0,y: 0,width: self.view.frame.width,height: self.view.frame.height))
        
        guard let urlStr = self.urlStr  else { return }
        
        let url = URL(string: urlStr)
        
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        
        webView.navigationDelegate = self;
        
        
        
        self.view.addSubview(webView)
        

        // Do any additional setup after loading the view.
    }
    
   func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("document.getElementById(\"newheader\").style.display=\"none\"") { any, error in
            
        }
    
        webView.evaluateJavaScript("document.getElementById(\"jdh\").style.display=\"none\"") { any, error in
            
        }
    
        webView.evaluateJavaScript("document.getElementById(\"header\").style.display=\"none!important\"") { any, error in
            
        }
    

        webView.evaluateJavaScript("document.getElementById(\"content-body\").style.margin-top=\"0px!important\"") { any, error in
            
        }
    
    
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            //页面开始加载时调用
//        webView.evaluateJavaScript("document.getElementById(\"newheader\").style.display=\"none\"") { any, error in
//            
//        }
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
