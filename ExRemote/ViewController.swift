//
//  ViewController.swift
//  ExRemote
//
//  Created by mapbarDaLian on 16/4/13.
//  Copyright © 2016年 AppStudio. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController,CBPeripheralServerDelegate {
    var remoteView = RemoteView()
    let peripheralManager : EXBLEPeripheralManager = EXBLEPeripheralManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        remoteView = RemoteView.init(frame: CGRect(x: 0, y: 0, width: UIScreen .mainScreen().bounds.size.width, height: UIScreen .mainScreen().bounds.size.height))
        self.view.addSubview(remoteView)
        
        remoteView.upButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.downButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.leftButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.rightButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.confirmButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.loudButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.whisperButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.voiceButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.menuButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
        remoteView.backButton.addTarget(self, action: #selector(tapped), forControlEvents: UIControlEvents.TouchUpInside)
    }

    func tapped(sender: UIButton) {
        let sendString:String = String(sender.tag)
        let data = sendString.dataUsingEncoding(NSUTF8StringEncoding)
        self.peripheralManager.sendToSubcribers(data!)
    }


    func peripheralServer(peripheral:EXBLEPeripheralManager, centralDidSubscribe central:CBCentral){
        
    }
    func peripheralServer(peripheral:EXBLEPeripheralManager, centralDidUnsubscribe central:CBCentral){
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

