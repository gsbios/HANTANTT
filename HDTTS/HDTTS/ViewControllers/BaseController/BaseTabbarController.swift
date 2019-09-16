//
//  BaseTabbarController.swift
//  HDTTS
//
//  Created by gsb on 2019/9/11.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func initTabbar() {
        tabBar.barTintColor = UIColor.white //KBartintColor
        
        let itemtitleArr = [
         "首页",
         "话题",
         "",
         "郸城生活",
         "个人中心"]
        
        let icon_normal:Array = [
            "tabbar_icon_home",
            "tabbar_icon_friend",
            "tabbar_icon_publish" ,
            "tabbar_icon_all",
            "tabbar_icon_me" ]
        
        let icon_selected = [
            "tabbar_icon_home_selected",
            "tabbar_icon_friend_selected",
            "tabbar_icon_publish" ,
            "tabbar_icon_all_selected",
            "tabbar_icon_me_selected" ]
        
        let vcname = [
            "HomeViewController",
            "FriendRootController",
            "BaseViewController",
            "AllViewController",
            "MeViewController"]
        
        var viewControllerArr: Array = [UIViewController]()
        for i in 0..<vcname.count {
        let appname = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        let cls = NSClassFromString(appname + "." + vcname[i]) as! BaseViewController.Type
        var vc:UIViewController!
        
        if i < vcname.count {
            vc = cls.init()
        }else{
            vc = UIStoryboard.init(name: "me", bundle: nil).instantiateViewController(withIdentifier: "me_stroryboar_identity")
        }
        let barItem = UITabBarItem(title: itemtitleArr[i], image: UIImage(named: icon_normal[i])?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: icon_selected[i])?.withRenderingMode(.alwaysOriginal))
        
            barItem.tag = i
            if i == 2{
                barItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
            }
        barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: .selected)
             vc.tabBarItem = barItem
            vc.title = itemtitleArr[i]
            
            let navigationVC =  
            
        
    }
    



}
