//
//  ViewMy.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewMy.h"
#import "ViewMY02.h"
#import "ViewWithFirst.h"
#import "ViewWithSecond.h"
#import "gougouView.h"
@interface ViewMy ()

@end

@implementation ViewMy

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarTtem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"yinyue.png"] tag:3];
    self.tabBarItem = tabBarTtem;
    
    self.view.backgroundColor = [UIColor clearColor];
    //设置导航栏颜色
//    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    //设置按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //设置导航栏风格颜色
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.translucent = YES;
//    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"我的音乐";
    
    
//    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithImage: [[UIImage imageNamed: @"play.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed: @"cloud.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:@selector(pressYun)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"tingge.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:nil];
    self.tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundView = [[UIView alloc] init];
    _tableView.backgroundColor = [UIColor clearColor];

    [self.view addSubview:_tableView];
    [_tableView registerClass:[ViewWithFirst class] forCellReuseIdentifier:@"cellFirst"];
}

- (void) pressYun
{
    ViewMY02* view02 = [ViewMY02 new];
    [self.navigationController pushViewController:view02 animated:YES];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
//设置行数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *array = [NSArray arrayWithObjects:@2, @2, @2, @3, nil];
    return [array[section] integerValue];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return 75 ;
        } else if (indexPath.row == 1){
            return 100;
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            return 45;
        } else if (indexPath.row == 1) {
            return 170;
        }
    } else if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            return 45;
        } else if (indexPath.row == 1) {
            return 85;
        }
    } else if (indexPath.section == 3) {
        if (indexPath.row == 0) {
            return 45;
        } else if (indexPath.row == 1) {
            return 75;
        } else if (indexPath.row == 2) {
            return 75;
        }
    }
    return 45;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewWithFirst *cell01 = [_tableView dequeueReusableCellWithIdentifier:@"firstCell"];
    ViewWithSecond* cell02 = [_tableView dequeueReusableCellWithIdentifier:@"secondCell"];
    
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    if (indexPath.section == 0)
    {
        if (indexPath.row == 0) {
            if (cell01 == nil) {
                cell01 = [[ViewWithFirst alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"firstCell"];
            }
            cell01.portBtn.image = [UIImage imageNamed:@"touxiang2.jpg"];
//            cell01.signBtn.image = [UIImage imageNamed:@"qiandao.png"];
            cell01.nameLable.text = @"普通人勾勾";
            cell01.nameLable.font = [UIFont systemFontOfSize:17];
            cell01.selectionStyle = UITableViewCellEditingStyleNone;

            self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
            cell01.selectionStyle = UITableViewCellEditingStyleNone;
//            cell01.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;
            return cell01;
        } else if (indexPath.row == 1) {
            if (cell02 == nil) {
                cell02 = [[ViewWithSecond alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"waitMe"];
            }

            gougouView* bendi = [gougouView new];
            gougouView* diantai = [gougouView new];
            gougouView* shoucang =  [gougouView new];
            gougouView* guanzhu = [gougouView new];
            
            [bendi.btnKing setImage:[UIImage imageNamed:@"bendiyinle-2.png"] forState:UIControlStateNormal];
            [diantai.btnKing setImage:[UIImage imageNamed:@"diantai.png"] forState:UIControlStateNormal];
            [shoucang.btnKing setImage:[UIImage imageNamed:@"shoucang.png"] forState:UIControlStateNormal];
            [guanzhu.btnKing setImage:[UIImage imageNamed:@"xinge-copy.png"] forState:UIControlStateNormal];
            
            bendi.lableKing.text = @"本地音乐";
            diantai.lableKing.text = @"我的电台";
            shoucang.lableKing.text = @"我的收藏";
            guanzhu.lableKing.text = @"关注新歌";
            
            bendi.lableKing.textAlignment = NSTextAlignmentCenter;
            diantai.lableKing.textAlignment = NSTextAlignmentCenter;
            shoucang.lableKing.textAlignment = NSTextAlignmentCenter;
            guanzhu.lableKing.textAlignment = NSTextAlignmentCenter;
            
            [cell02.view01 addSubview:bendi];
            [cell02.view02 addSubview:diantai];
            [cell02.view03 addSubview:shoucang];
            [cell02.view04 addSubview:guanzhu];
            
            cell02.selectionStyle = UITableViewCellEditingStyleNone;
            return cell02;
        }
    } else if (indexPath.section == 1) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"waitMe"];
        }
        if (indexPath.row == 0) {
            cell.textLabel.text = @"我的音乐";
            cell.textLabel.font = [UIFont systemFontOfSize:17];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        } else if (indexPath.row == 1) {
            UIButton* myView = [UIButton buttonWithType:UIButtonTypeCustom];
            myView.frame = CGRectMake(10, 10, 390, 160);
            [myView setImage:[UIImage imageNamed:@"my01.jpeg"] forState:UIControlStateNormal];
            [cell.contentView addSubview:myView];
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        }
    } else if (indexPath.section == 2) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"waitMe02"];
        }
        if (indexPath.row == 0) {
            cell.textLabel.text = @"最近播放";
            cell.textLabel.font = [UIFont systemFontOfSize:17];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        } else if (indexPath.row == 1) {
            UIButton* btn01 = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeCustom];
            
            btn01.frame = CGRectMake(20, 10, 65, 65);
            btn02.frame = CGRectMake(220, 10, 65, 65);
            
            [btn01 setImage:[UIImage imageNamed:@"btn01.jpg"] forState:UIControlStateNormal];
            [btn02 setImage:[UIImage imageNamed:@"btn02.png"] forState:UIControlStateNormal];
            
            [cell.contentView addSubview:btn01];
            [cell.contentView addSubview:btn02];
            
            UILabel* label01 = [[UILabel alloc] initWithFrame:CGRectMake(95, 25, 120, 20)];
            UILabel* label02 = [[UILabel alloc] initWithFrame:CGRectMake(295, 25, 120, 20)];
            
            label01.font = [UIFont systemFontOfSize:15];
            label02.font = [UIFont systemFontOfSize:15];
            
            label01.text = @"全部已播歌曲";
            label02.text = @"歌单:网抑云";
            
            [cell.contentView addSubview:label01];
            [cell.contentView addSubview:label02];
            
            UILabel* label03 = [[UILabel alloc] initWithFrame:CGRectMake(95, 50, 120, 20)];
            UILabel* label04 = [[UILabel alloc] initWithFrame:CGRectMake(295, 50, 120, 20)];
            
            label03.font = [UIFont systemFontOfSize:13];
            label04.font = [UIFont systemFontOfSize:13];
            
            label03.text = @"300首";
            label04.text = @"继续播放";
            
            label03.textColor = [UIColor grayColor];
            label04.textColor = [UIColor grayColor];
            
            [cell.contentView addSubview:label03];
            [cell.contentView addSubview:label04];
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        }
    } else if (indexPath.section == 3) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"waiteMe03"];
        }
        if (indexPath.row == 0) {
            cell.textLabel.text = @"创建歌单     收藏歌单     歌单助手";
            cell.textLabel.font = [UIFont systemFontOfSize:17];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        } if (indexPath.row == 1) {
            UIButton* gedan01 = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton* gedan02 = [UIButton buttonWithType:UIButtonTypeCustom];
            
            gedan01.frame = CGRectMake(20, 10, 65, 65);
            gedan02.frame = CGRectMake(220, 10, 65, 65);
            
            [gedan01 setImage:[UIImage imageNamed:@"haha01.jpg"] forState:UIControlStateNormal];
            [gedan02 setImage:[UIImage imageNamed:@"haha02.jpg"] forState:UIControlStateNormal];
            
            [cell.contentView addSubview:gedan01];
            [cell.contentView addSubview:gedan02];
            
            UILabel* name01 = [[UILabel alloc] initWithFrame:CGRectMake(95, 25, 120, 20)];
            UILabel* name02 = [[UILabel alloc] initWithFrame:CGRectMake(295, 25, 120, 20)];
            
            name01.font = [UIFont systemFontOfSize:15];
            name02.font = [UIFont systemFontOfSize:15];
            
            
            name01.text = @"云月惊鸿来";
            name02.text = @"星河杳杳";
            
            [cell.contentView addSubview:name01];
            [cell.contentView addSubview:name02];
            
            UILabel* name03 = [[UILabel alloc] initWithFrame:CGRectMake(95, 50, 120, 20)];
            UILabel* name04 = [[UILabel alloc] initWithFrame:CGRectMake(295, 50, 120, 20)];
            
            name03.font = [UIFont systemFontOfSize:13];
            name04.font = [UIFont systemFontOfSize:13];
            
            name03.textColor = [UIColor grayColor];
            name04.textColor = [UIColor grayColor];
            
            name03.text = @"45首";
            name04.text = @"25首";
            
            [cell.contentView addSubview:name03];
            [cell.contentView addSubview:name04];
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        } else if (indexPath.row == 2) {
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"waitMe04"];
            }
            UIButton* gedan03 = [UIButton buttonWithType:UIButtonTypeCustom];
            [gedan03 setImage:[UIImage imageNamed:@"haha03.jpg"] forState:UIControlStateNormal];
            gedan03.frame = CGRectMake(20, 10, 65, 65);
            [cell.contentView addSubview:gedan03];
            
            UILabel* name03 = [[UILabel alloc] initWithFrame:CGRectMake(95, 22, 120, 20)];
            name03.text = @"创建歌单";
            name03.font = [UIFont systemFontOfSize:15];
            [cell.contentView addSubview:name03];
            cell.selectionStyle = UITableViewCellEditingStyleNone;
            return cell;
        }
    }
        return cell01;
}
- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5;
}
- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}
- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
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
