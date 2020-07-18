//
//  TTTabBar.m
//  彩票App-基本框架
//
//  Created by 芝麻汤圆 on 2020/7/18.
//  Copyright © 2020 芝麻汤圆. All rights reserved.
//

#import "TTTabBar.h"
@interface TTItemButton : UIButton
@end
@implementation TTItemButton
- (void)setHighlighted:(BOOL)highlighted {
//    [super setHighlighted:highlighted];
}
@end


@interface TTTabBar ()
@property (nonatomic, strong) UIButton *buttonCurrent;
@end
@implementation TTTabBar
- (void)addButtonsWithImage:(UIImage *)image andSelectedImage:(UIImage *)selectedImage {
    //创建items
    TTItemButton *ttabbarItem = [[TTItemButton alloc] init];
    //设置图片
    [ttabbarItem setImage:image forState:UIControlStateNormal];
    [ttabbarItem setImage:selectedImage forState:UIControlStateSelected];
    //添加点击事件
    [ttabbarItem addTarget:self action:@selector(itemButtonClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:ttabbarItem];
    
}

//子控件布局
- (void)layoutSubviews {
    for (int i = 0; i < self.subviews.count; ++i) {
        TTItemButton *ttabbarItem = self.subviews[i];
        //计算items的frame
        CGFloat itemWidth = kMainScreenWidthSzie / 5;
        CGFloat itemHeight = 84;
        CGFloat itemX = itemWidth * i;
        CGFloat itemY = 0;
        //设置
        ttabbarItem.tag = i;
        ttabbarItem.frame = CGRectMake(itemX, itemY, itemWidth, itemHeight);
        
        //点一下第一个按钮
        if (i == 0) {
            [self itemButtonClick:ttabbarItem];
        }
    }
}

- (void)itemButtonClick:(UIButton *)sender {
    //取消上一个点击按钮的状态
    self.buttonCurrent.selected = NO;
    //改变状态
    sender.selected = YES;
    //传值给buttonCurrent
    self.buttonCurrent = sender;
    
    //切换控制器(跳页)
//    self.selectedIndex = sender.tag;
    //先判断block是否有值
    if (self.tabbarButtonBlock) {
        self.tabbarButtonBlock(sender.tag);
    }
}
@end
