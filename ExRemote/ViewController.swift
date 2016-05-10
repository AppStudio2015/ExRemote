//
//  ViewController.swift
//  ExRemote
//
//  Created by mapbarDaLian on 16/4/13.
//  Copyright © 2016年 AppStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var remoteView = RemoteView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        remoteView = RemoteView.init(frame: CGRect(x: 0, y: 0, width: UIScreen .mainScreen().bounds.size.width, height: UIScreen .mainScreen().bounds.size.height))
        self.view.addSubview(remoteView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

