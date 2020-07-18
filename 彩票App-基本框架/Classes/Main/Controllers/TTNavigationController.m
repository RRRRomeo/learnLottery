//
//  TTNavigationController.m
//  彩票App-基本框架
//
//  Created by 芝麻汤圆 on 2020/7/18.
//  Copyright © 2020 芝麻汤圆. All rights reserved.
//

#import "TTNavigationController.h"

@interface TTNavigationController ()

@end

@implementation TTNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"Navbar"] forBarMetrics:UIBarMetricsDefault];
    //设置文字为白色
    [self.navigationBar setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor whiteColor]
    }];
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
