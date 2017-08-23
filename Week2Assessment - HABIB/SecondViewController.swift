//
//  SecondViewController.swift
//  Week2Assessment - HABIB
//
//  Created by Habib Zarrin Chang Fard on 18/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var webView: UIWebView!

    
    var specificItem: Item = Item(title: "", details : "", imageName : "", link : "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTheUrl(with: specificItem.link)
    }
    
    func loadTheUrl(with String: String) {
        
        guard let url = URL(string : String) else {
            print("Invalid urlString: \(String)")
            return
        }
        
        let request = URLRequest(url: url)
        webView.loadRequest(request)
        
    }
    
}
