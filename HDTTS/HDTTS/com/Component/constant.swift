//
//  constant.swift
//  HDTTS
//
//  Created by gsb on 2019/9/11.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import Foundation

let kIsIphoneX = UIScreen.main.bounds.size.equalTo(CGSize(width: 375, height: 812))
let kNavigationBarHeight:CGFloat = kIsIphoneX ? 88 : 64
let kBottomToolBarHeight:CGFloat = kIsIphoneX ? 80 : 49


///
let kBartintColor = UIColor(red: 54/255.0, green:  54/255.0, blue:  54/255.0, alpha: 1)
let kTableviewBackgroundColor = UIColor.init(red:  231/255.0, green: 231/255.0, blue: 231/255.0, alpha: 1)

let kCellDefaultBgColor = UIColor(red: 236/255.0, green: 236/255.0, blue: 236/255.0, alpha: 1)
let kCellSelectedBgColor = UIColor.white
let kCurrentScreenWidth = UIScreen.main.bounds.width
let kCurrentScreenHeight = UIScreen.main.bounds.height
var APP_IS_BACKGROUND : Bool = false //APP是否处于后台

let BASE_URL = "http://39.106.164.101:80/tt/"
let home_list_url = "getPostList.php"
let publish_url = "publish.php"
let register_url = "register.php"
let login_url = "login.php"
let get_checkcode_url = "sendCheckCode.php" //获取验证码

let update_profile_url = "updateProfile.php"
let update_deviceInfo_url = "updateDeviceInfo.php"
let get_msglist_url = "message.php"
let jubao_url = "jubao.php"

let comment_url = "comment.php"
let post_detail_url = "detail.php"
let get_sc_url = "getsc.php"
let fans_url = "fan.php"
let blackList_url = "blackList.php"

let delete_sc_url = "deletesc.php"
let feedback_url = "feedback.php"
let get_servernumber_url = "getNumberWithType.php"

let user_agreement_url = "p/userAgreement.html"
let aboutus_url = "p/aboutus.html"
let contactus_url = "p/contactus.html"
let disclaimer_url = "p/disclaimer.html"
let usehelp_url = "p/usehelp.html"
let privacy_agreement_url = "p/userPrivacy.html"
let feedbackList_url = "p/feedbackList.html"



///
//let Loading = {}











