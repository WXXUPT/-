//
//  ViewCloudCun.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewCloudCun.h"

@interface ViewCloudCun ()

@end

@implementation ViewCloudCun

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarTtem = [[UITabBarItem alloc] initWithTitle:@"云村" image:[UIImage imageNamed:@"team.png"] tag:4];
    self.tabBarItem = tabBarTtem;
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
