//
//  SceneDelegate.m
//  彩票App-基本框架
//
//  Created by 芝麻汤圆 on 2020/7/18.
//  Copyright © 2020 芝麻汤圆. All rights reserved.
//

#import "SceneDelegate.h"
#import "AppDelegate.h"
#import "TTTabBarController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    //创建主屏幕
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    
    //创建Windows
    self.window = [[UIWindow alloc]initWithFrame:kMainScreenSize];
    self.window = [[UIWindow alloc]initWithWindowScene:windowScene];
    [self.window setWindowScene:windowScene];
    
    //创建TabBarViewController
    TTTabBarController *tabbarController = [[TTTabBarController alloc] init];
    //设置tabbar的子控制器
    /**
     //获取sb对象
     UIViewController *hall = [self loadViewControllerWithSBName:@"Hall"];
     UIViewController *discovery = [self loadViewControllerWithSBName:@"Discovery"];
     UIViewController *history = [self loadViewControllerWithSBName:@"History"];
     UIViewController *arena = [self loadViewControllerWithSBName:@"Arena"];
     UIViewController *mylottery = [self loadViewControllerWithSBName:@"Mylottery"];
     //将子控制器添加到tabbarController
     tabbarController.viewControllers = @[hall, discovery, history, arena, mylottery];
     */
    //window设置根控制器
    self.window.rootViewController = tabbarController;
    
    //window显示
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.

    // Save changes in the application's managed object context when the application transitions to the background.
    [(AppDelegate *)UIApplication.sharedApplication.delegate saveContext];
}


@end
