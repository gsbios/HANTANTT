//
//  HUD.swift
//  HDTTS
//
//  Created by gsb on 2019/9/11.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SVProgressHUD
import MBProgressHUD

class HUD: NSObject {
    
    static func config(){
        SVProgressHUD.setBackgroundColor(UIColor.black)
        SVProgressHUD.setForegroundColor(UIColor.white)
        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.black)
        SVProgressHUD.setDefaultAnimationType(SVProgressHUDAnimationType.native)
        SVProgressHUD.setMinimumDismissTimeInterval(1)
        SVProgressHUD.setSuccessImage(UIImage(named: "success")!)
        SVProgressHUD.setErrorImage(UIImage(named: "error")!)
    }
    
    static func show(){
        SVProgressHUD.show()
    }
    static func show(withStatus str:String){
        SVProgressHUD.showInfo(withStatus: str)
    }
    static func show(successInfo str:String){
        SVProgressHUD.showSuccess(withStatus: str)
    }
    static func showProgress(progress:Float,status:String) {
        SVProgressHUD.showProgress(progress,status: status)
    }
    
    
    static func dismiss() {
        SVProgressHUD.dismiss()
    }
    
    ////
    static func showText(_ text:String , view: UIView? = UIApplication.shared.keyWindow){
        let hud = MBProgressHUD.showAdded(to: view!, animated: true)
        hud.label.text = text
        hud.label.numberOfLines = 0
        hud.mode = .text
        hud.bezelView.backgroundColor = UIColor.black
        hud.contentColor = UIColor.white
        hud.offset = CGPoint(x: 0, y: 30)
        
        hud.hide(animated: true, afterDelay: 1)
    }
    
    static func dimissHudView(_ view: UIView){
        MBProgressHUD.hide(for: view, animated: true)
    }
}
