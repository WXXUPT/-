//
//  ViewVideo.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewVideo.h"

@interface ViewVideo ()

@end

@implementation ViewVideo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:[UIImage imageNamed:@"shipin.png"] tag:2];
    self.tabBarItem = tabBarItem;
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
