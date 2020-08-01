//
//  ViewMY02.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewMY02.h"

@interface ViewMY02 ()

@end

@implementation ViewMY02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"我的音乐云盘";
    
    UIBarButtonItem* btnLeft = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"left-arrow.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    [btnLeft setTintColor:[UIColor blackColor]];
//    self.navigationController.navigationItem.leftBarButtonItem = btnLeft;
    self.navigationItem.leftBarButtonItem = btnLeft;

}
- (void) pressLeft
{
    [self.navigationController popViewControllerAnimated:YES];
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
