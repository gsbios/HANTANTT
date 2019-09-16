//
//  AnimationController.h
//  HDTTS
//
//  Created by gsb on 2019/9/11.
//  Copyright © 2019 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface AnimationController : NSObject<UIViewControllerAnimatedTransitioning>

+(instancetype)AnimationControllerWithOperation:(UINavigationControllerOperation)operation;
+(instancetype)AnimationControllerWithOperation:(UINavigationControllerOperation)operation NavigationController:(UINavigationController *)navigationController;

@property (nonatomic,assign) UINavigationControllerOperation navigationOperation;
@property (nonatomic,weak) UINavigationController *navigationController;

/**
 导航栏Pop时删除了多少张截图（调用PopToViewController时，计算要删除的截图的数量）
 */
@property (nonatomic,assign) NSInteger removeCount;

/**
 调用此方法删除数组最后一张截图 （调用pops手势一次pop多个控制器时使用）
 */
-(void)removeLastScreenShot;
/**
 移除全部屏幕截图
 */
-(void)removeAllScreenShot;
/**
 从截屏数组尾部移除指定数量的截图
 */
-(void)removeLastScreenShotWithNumber:(NSInteger)number;

@end

NS_ASSUME_NONNULL_END
