//
//  TTTabBarController.m
//  彩票App-基本框架
//
//  Created by 芝麻汤圆 on 2020/7/18.
//  Copyright © 2020 芝麻汤圆. All rights reserved.
//

#import "TTTabBarController.h"
#import "TTTabBar.h"

@interface TTTabBarController ()

@end

@implementation TTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取sb对象
    UIViewController *hall = [self loadViewControllerWithSBName:@"Hall"];
    UIViewController *arena = [self loadViewControllerWithSBName:@"Arena"];
    UIViewController *discovery = [self loadViewControllerWithSBName:@"Discovery"];
    UIViewController *history = [self loadViewControllerWithSBName:@"History"];
    UIViewController *mylottery = [self loadViewControllerWithSBName:@"Mylottery"];
    //将子控制器添加到tabbarController
    self.viewControllers = @[hall, arena, discovery, history, mylottery];
    
    //创建一个自定义的tabbar
    TTTabBar *tabbar = [[TTTabBar alloc] init];
    //block调用(跳页)
    tabbar.tabbarButtonBlock = ^(NSInteger index) {
        self.selectedIndex = index;
    };
    //设置
//    tabbar.frame = self.tabBar.frame;
    tabbar.frame = CGRectMake(0, kMainScreenHeightSize - 84, kMainScreenWidthSzie, 84);
//    tabbar.backgroundColor = [UIColor redColor];
    
    //添加tabbarItems
    for (int i = 0; i < self.viewControllers.count; ++i) {
        UIImage *image =  [UIImage imageNamed:[NSString stringWithFormat:@"%dNormal", i + 1]];
        UIImage *selectedImage =  [UIImage imageNamed:[NSString stringWithFormat:@"%dSelected", i + 1]];
        [tabbar addButtonsWithImage:image andSelectedImage:selectedImage];
        
    }
    
    //添加到tabbarController中
    [self.view addSubview:tabbar];
}
//加载sb方法
- (UIViewController *)loadViewControllerWithSBName:(NSString *)name {
    return [[UIStoryboard storyboardWithName:name bundle:nil] instantiateInitialViewController];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
