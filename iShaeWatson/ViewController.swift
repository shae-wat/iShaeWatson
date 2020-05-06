//
//  ViewController.swift
//  iShaeWatson
//
//  Created by Shaelyn Watson on 5/4/20.
//  Copyright © 2020 Shaelyn Watson. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://shaewatson.com")!
        webView.load(URLRequest(url: url))
    }
    
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

}

