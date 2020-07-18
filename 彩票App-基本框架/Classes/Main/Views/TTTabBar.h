//
//  TTTabBar.h
//  彩票App-基本框架
//
//  Created by 芝麻汤圆 on 2020/7/18.
//  Copyright © 2020 芝麻汤圆. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TTTabBar : UIView

//Block
@property (nonatomic, copy) void (^tabbarButtonBlock)(NSInteger);

- (void)addButtonsWithImage:(UIImage *)image andSelectedImage:(UIImage *)selectedImage;
@end

NS_ASSUME_NONNULL_END
