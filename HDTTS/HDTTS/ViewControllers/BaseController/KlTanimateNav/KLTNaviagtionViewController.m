//
//  KLTNaviagtionViewController.m
//  HDTTS
//
//  Created by gsb on 2019/9/11.
//  Copyright © 2019 mac. All rights reserved.
//

#import "KLTNaviagtionViewController.h"
#import "AnimationController.h"

#define ColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface KLTNaviagtionViewController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@property (nonatomic,strong)UIImageView *screenshotImgView;
@property (nonatomic,strong) UIView *coverView;
@property (nonatomic,strong) NSMutableArray *screenshotImgs;

@property (nonatomic,strong)UIImage *nextVCScreenShotImg;

@property (nonatomic,strong) AnimationController *animationController;

@end

@implementation KLTNaviagtionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    
    self.navigationBar.tintColor = ColorFromRGB(0x6F7179);
    
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    self.view.layer.shadowOffset = CGSizeMake(-0.8, 0);
    self.view.layer.shadowOpacity = 0.6;
    
    // Do any additional setup after loading the view.
    // 1,创建Pan手势识别器,并绑定监听方法
    _panGestureRec = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRec:)];
    _panGestureRec.edges = UIRectEdgeLeft;
    //为导航控制器的View添加Pan手势识别器
    [self.view addGestureRecognizer:_panGestureRec];
    
    //2.创建截图的IamgeView
    _screenshotImgView = [[UIImageView alloc] init];
    // app的frame是包括了状态栏d高度的frame
    _screenshotImgView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
    
    //3.创建截图上面的黑色半透明遮罩
    _coverView = [[UIView alloc] init];
    // 遮罩的frame就是截图的frame
    _coverView.frame =_screenshotImgView.frame;
    //遮罩为黑色
    _coverView.backgroundColor = [UIColor blackColor];
    //4.存放所有的截图数组初始化
    _screenshotImgs = [NSMutableArray array];
}


@end
