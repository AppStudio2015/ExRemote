//
//  RemoteView.swift
//  ExRemote
//
//  Created by lihao on 16/5/10.
//  Copyright © 2016年 AppStudio. All rights reserved.
//

import UIKit

class RemoteView: UIView {
    lazy var upButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var downButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var leftButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var rightButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var confirmButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var loudButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var whisperButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var voiceButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var menuButton: UIButton = UIButton.init(frame: CGRectZero)
    lazy var backButton: UIButton = UIButton.init(frame: CGRectZero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutRemoteView(frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layoutRemoteView(frame: CGRect) {
        self.addSubview(upButton)
        self.addSubview(downButton)
        self.addSubview(leftButton)
        self.addSubview(rightButton)
        self.addSubview(confirmButton)
        self.addSubview(loudButton)
        self.addSubview(whisperButton)
        self.addSubview(voiceButton)
        self.addSubview(menuButton)
        self.addSubview(backButton)
        
        upButton.translatesAutoresizingMaskIntoConstraints = false
        let upButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: upButton, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        let upButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: upButton, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1.0, constant: 30.0)
        let upButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: upButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 50.0)
        let upButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: upButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 150.0)
        let upButtonContrains: NSArray = [upButtonContrainTop, upButtonContrainWidth, upButtonContrainHeight, upButtonContrainLeading]
        self.addConstraints(upButtonContrains as! [NSLayoutConstraint])
        upButton.setImage(UIImage(named: "UP"), forState: .Normal)
        upButton.tag = 1001
        
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        let confirmButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: confirmButton, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        let confirmButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: confirmButton, attribute: .Top, relatedBy: .Equal, toItem: upButton, attribute: .Bottom, multiplier: 1.0, constant: 60.0)
        let confirmButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: confirmButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let confirmButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: confirmButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let confirmButtonContrains: NSArray = [confirmButtonContrainTop, confirmButtonContrainWidth, confirmButtonContrainHeight, confirmButtonContrainLeading]
        self.addConstraints(confirmButtonContrains as! [NSLayoutConstraint])
        confirmButton.setImage(UIImage(named: "OK"), forState: .Normal)
        confirmButton.tag = 1002
        
//                let <#type#>: NSLayoutConstraint = NSLayoutConstraint.init(item: confirmButton, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        
        downButton.translatesAutoresizingMaskIntoConstraints = false
        let downButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: downButton, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        let downButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: downButton, attribute: .Top, relatedBy: .Equal, toItem: confirmButton, attribute: .Bottom, multiplier: 1.0, constant: 60.0)
        let downButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: downButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 50.0)
        let downButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: downButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 150.0)
        let downButtonContrains: NSArray = [downButtonContrainTop, downButtonContrainWidth, downButtonContrainHeight, downButtonContrainLeading]
        self.addConstraints(downButtonContrains as! [NSLayoutConstraint])
        downButton.setImage(UIImage(named: "Down"), forState: .Normal)
        downButton.tag = 1003
        
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        let leftButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: leftButton, attribute: .Trailing, relatedBy: .Equal, toItem: confirmButton, attribute: .Leading, multiplier: 1.0, constant: -60.0)
        let leftButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: leftButton, attribute: .CenterY, relatedBy: .Equal, toItem: confirmButton, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        let leftButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: leftButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 150.0)
        let leftButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: leftButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 50.0)
        let leftButtonContrains: NSArray = [leftButtonContrainTop, leftButtonContrainWidth, leftButtonContrainHeight, leftButtonContrainLeading]
        self.addConstraints(leftButtonContrains as! [NSLayoutConstraint])
        leftButton.setImage(UIImage(named: "Left"), forState: .Normal)
        leftButton.tag = 1004
        
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        let rightButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: rightButton, attribute: .Leading, relatedBy: .Equal, toItem: confirmButton, attribute: .Trailing, multiplier: 1.0, constant: 60.0)
        let rightButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: rightButton, attribute: .CenterY, relatedBy: .Equal, toItem: confirmButton, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        let rightButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: rightButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 150.0)
        let rightButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: rightButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 50.0)
        let rightButtonContrains: NSArray = [rightButtonContrainTop, rightButtonContrainWidth, rightButtonContrainHeight, rightButtonContrainLeading]
        self.addConstraints(rightButtonContrains as! [NSLayoutConstraint])
        rightButton.setImage(UIImage(named: "Right"), forState: .Normal)
        rightButton.tag = 1005
        
        loudButton.translatesAutoresizingMaskIntoConstraints = false
        let loudButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: loudButton, attribute: .Trailing, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: -2.0)
        let loudButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: loudButton, attribute: .Top, relatedBy: .Equal, toItem: downButton, attribute: .Bottom, multiplier: 1.0, constant: 50.0)
        let loudButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: loudButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 46.0)
        let loudButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: loudButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 83.0)
        let loudButtonContrains: NSArray = [loudButtonContrainTop, loudButtonContrainWidth, loudButtonContrainHeight, loudButtonContrainLeading]
        self.addConstraints(loudButtonContrains as! [NSLayoutConstraint])
        loudButton.setImage(UIImage(named: "Plus"), forState: .Normal)
        loudButton.tag = 1006
        
        whisperButton.translatesAutoresizingMaskIntoConstraints = false
        let whisperButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: whisperButton, attribute: .Leading, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 2.0)
        let whisperButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: whisperButton, attribute: .CenterY, relatedBy: .Equal, toItem: loudButton, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        let whisperButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: whisperButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 46.0)
        let whisperButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: whisperButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 83.0)
        let whisperButtonContrains: NSArray = [whisperButtonContrainTop, whisperButtonContrainWidth, whisperButtonContrainHeight, whisperButtonContrainLeading]
        self.addConstraints(whisperButtonContrains as! [NSLayoutConstraint])
        whisperButton.setImage(UIImage(named: "Dec"), forState: .Normal)
        whisperButton.tag = 1007
        
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        let menuButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: menuButton, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        let menuButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: menuButton, attribute: .Top, relatedBy: .Equal, toItem: loudButton, attribute: .Bottom, multiplier: 1.0, constant: 50.0)
        let menuButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: menuButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let menuButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: menuButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let menuButtonContrains: NSArray = [menuButtonContrainTop, menuButtonContrainWidth, menuButtonContrainHeight, menuButtonContrainLeading]
        self.addConstraints(menuButtonContrains as! [NSLayoutConstraint])
        menuButton.setBackgroundImage(UIImage(named: "menu58pt"), forState: .Normal)
        menuButton.tag = 1008
        
        voiceButton.translatesAutoresizingMaskIntoConstraints = false
        let voiceButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: voiceButton, attribute: .Trailing, relatedBy: .Equal, toItem: menuButton, attribute: .Leading, multiplier: 1.0, constant: -40.0)
        let voiceButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: voiceButton, attribute: .CenterY, relatedBy: .Equal, toItem: menuButton, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        let voiceButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: voiceButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let voiceButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: voiceButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let voiceButtonContrains: NSArray = [voiceButtonContrainTop, voiceButtonContrainWidth, voiceButtonContrainHeight, voiceButtonContrainLeading]
        self.addConstraints(voiceButtonContrains as! [NSLayoutConstraint])
        voiceButton.setBackgroundImage(UIImage(named: "voice58pt"), forState: .Normal)
        voiceButton.tag = 1009
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        let backButtonContrainLeading: NSLayoutConstraint = NSLayoutConstraint.init(item: backButton, attribute: .Leading, relatedBy: .Equal, toItem: menuButton, attribute: .Trailing, multiplier: 1.0, constant: 40.0)
        let backButtonContrainTop: NSLayoutConstraint = NSLayoutConstraint.init(item: backButton, attribute: .CenterY, relatedBy: .Equal, toItem: menuButton, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        let backButtonContrainHeight: NSLayoutConstraint = NSLayoutConstraint.init(item: backButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let backButtonContrainWidth: NSLayoutConstraint = NSLayoutConstraint.init(item: backButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 58.0)
        let backButtonContrains: NSArray = [backButtonContrainTop, backButtonContrainWidth, backButtonContrainHeight, backButtonContrainLeading]
        self.addConstraints(backButtonContrains as! [NSLayoutConstraint])
        backButton.setBackgroundImage(UIImage(named: "return58pt"), forState: .Normal)
        backButton.tag = 1010
    }
}
