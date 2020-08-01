//
//  SceneDelegate.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewFind.h"
#import "ViewVideo.h"
#import "ViewAccount.h"
#import "ViewCloudCun.h"
#import "ViewMy.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    self.window = [[UIWindow alloc] initWithWindowScene:scene];
    [self.window makeKeyAndVisible];
    
    ViewFind* viewFind = [ViewFind new];
    ViewVideo* viewVideo = [ViewVideo new];
    ViewAccount* viewAccount = [ViewAccount new];
    ViewCloudCun* viewCloudCun = [ViewCloudCun new];
    ViewMy* viewMy = [ViewMy new];
    
    viewFind.title = @"发现";
    viewVideo.title = @"视频";
    viewAccount.title = @"账号";
    viewCloudCun.title = @"云村";
    viewMy.title = @"我的";
    
    viewFind.view.backgroundColor = [UIColor whiteColor];
    viewVideo.view.backgroundColor = [UIColor whiteColor];
    viewAccount.view.backgroundColor = [UIColor whiteColor];
    viewCloudCun.view.backgroundColor = [UIColor whiteColor];
    viewMy.view.backgroundColor = [UIColor whiteColor];
    
    //创建两个导航控制器 我的/账号
    UINavigationController* nav01 = [[UINavigationController alloc] initWithRootViewController:viewMy];
//    nav01.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.01 alpha:1.0];
//    [nav01.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UINavigationController* nav02 = [[UINavigationController alloc] initWithRootViewController:viewAccount];
    UITabBarController* tbController = [UITabBarController new];
    NSArray* arrayView = [NSArray arrayWithObjects:viewFind,viewVideo,nav01,viewCloudCun,nav02, nil];
    tbController.viewControllers = arrayView;
    tbController.tabBar.tintColor = [UIColor redColor];
    
    self.window.rootViewController = tbController;
    tbController.selectedIndex = 2;
    tbController.tabBar.translucent = NO;
    

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
}


@end
