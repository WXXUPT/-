//
//  ViewAccount.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewAccount.h"
#import "ViewWithFirst.h"
#import "ViewWithSecond.h"
#import "gougouView.h"
@interface ViewAccount ()
//static NSString *firstCell = @"firstCell";
@end
static NSString *firstCell = @"firstCell";

@implementation ViewAccount

- (void)viewDidLoad {
        [super viewDidLoad];
        // Do any additional setup after loading the view.
        UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"账号" image:[UIImage imageNamed:@"zhanghao.png"] tag:5];
        tabBarItem.badgeValue = @"10";
        self.tabBarItem = tabBarItem;
        
        //设置导航栏颜色
        //    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
            //设置按钮颜色
        self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
            //设置导航栏风格颜色
        //    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
        self.navigationController.navigationBar.translucent = YES;
        //    self.navigationController.navigationBar.translucent = NO;
        self.navigationItem.title = @"我的账号";
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"icon-test.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:nil];
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"tingge.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:nil];
        
        self.tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
        
        _tableView.delegate = self;
        _tableView.dataSource = self;
    
       _tableView.backgroundView = [[UIView alloc] init];
       _tableView.backgroundColor = [UIColor clearColor];


        [self.view addSubview:_tableView];
        [_tableView registerClass:[ViewWithFirst class] forCellReuseIdentifier:@"cellFirst"];
    
}
//设置组数
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 6;
}
//设置行数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *array = [NSArray arrayWithObjects:@2, @1, @5, @9, @5,@1, nil];
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
    } else if (indexPath.section == 4){
        if (indexPath.row == 0)
            return 15;
        else
            return 45;
    }
    return 45;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewWithFirst *cell01 = [_tableView dequeueReusableCellWithIdentifier:firstCell];
    ViewWithSecond* cell02 = [_tableView dequeueReusableCellWithIdentifier:@"secondCell"];
    
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    if (indexPath.section == 0)
    {
        if (indexPath.row == 0) {
            if (cell01 == nil) {
                cell01 = [[ViewWithFirst alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:firstCell];
            }
            cell01.portBtn.image = [UIImage imageNamed:@"touxiang2.jpg"];
//            cell01.signBtn.image = [UIImage imageNamed:@"qiandao.png"];
            [cell01.signBtn setImage:[UIImage imageNamed:@"qiandao.png"] forState:UIControlStateNormal];
            [cell01.signBtn setImage:[UIImage imageNamed:@"已签到.png"] forState:UIControlStateHighlighted | UIControlStateSelected];
            [cell01.signBtn addTarget:self action:@selector(pressSign:) forControlEvents:UIControlEventTouchUpInside];
            cell01.nameLable.text = @"普通人勾勾";
            cell01.nameLable.font = [UIFont systemFontOfSize:17];
            cell01.selectionStyle = UITableViewCellEditingStyleNone;

            self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
            cell01.selectionStyle = UITableViewCellEditingStyleNone;
//            cell01.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;
            return cell01;
        } else if (indexPath.row == 1) {
            if (cell02 == nil) {
                cell02 = [[ViewWithSecond alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"secondCell"];
            }

            gougouView* haoyou = [gougouView new];
            gougouView* xiaoxi = [gougouView new];
            gougouView* zhuye =  [gougouView new];
            gougouView* huanfu = [gougouView new];
            
            [haoyou.btnKing setImage:[UIImage imageNamed:@"haoyou.png"] forState:UIControlStateNormal];
            [xiaoxi.btnKing setImage:[UIImage imageNamed:@"youjian.png"] forState:UIControlStateNormal];
            [zhuye.btnKing setImage:[UIImage imageNamed:@"zhuye.png"] forState:UIControlStateNormal];
            [huanfu.btnKing setImage:[UIImage imageNamed:@"gexingzhuangban.png"] forState:UIControlStateNormal];
            
            haoyou.lableKing.text = @"我的好友";
            xiaoxi.lableKing.text = @"我的消息";
            zhuye.lableKing.text = @"我的主页";
            huanfu.lableKing.text = @"个性换肤";
            
            haoyou.lableKing.textAlignment = NSTextAlignmentCenter;
            xiaoxi.lableKing.textAlignment = NSTextAlignmentCenter;
            zhuye.lableKing.textAlignment = NSTextAlignmentCenter;
            huanfu.lableKing.textAlignment = NSTextAlignmentCenter;
            
            [cell02.view01 addSubview:haoyou];
            [cell02.view02 addSubview:xiaoxi];
            [cell02.view03 addSubview:zhuye];
            [cell02.view04 addSubview:huanfu];
            
            cell02.selectionStyle = UITableViewCellEditingStyleNone;
            return cell02;
        }
    } else if (indexPath.section == 1) {
        NSMutableArray* array01 = [NSMutableArray arrayWithObject:@"创作者中心"];
        cell.textLabel.text = [array01 objectAtIndex:indexPath.row];
        cell.selectionStyle = UITableViewCellEditingStyleNone;//选中别黑
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;//右箭头
        cell.imageView.image = [UIImage imageNamed:@"dengpao.png"];
        return cell;
    } else if (indexPath.section == 2) {
        NSMutableArray* array02 = [NSMutableArray arrayWithObjects:@"音乐服务",@"演出",@"商城",@"口袋彩铃",@"在线听歌免流量",nil];
        cell.textLabel.text = [array02 objectAtIndex:indexPath.row];
        if (indexPath.row == 0) {
            cell.textLabel.font = [UIFont systemFontOfSize:14];
        }
        cell.selectionStyle = UITableViewCellEditingStyleNone;
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
        if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"yanchu.png"];
        } else if (indexPath.row == 2) {
            cell.imageView.image = [UIImage imageNamed:@"shangcheng.png"];
        } else if (indexPath.row == 3) {
            cell.imageView.image = [UIImage imageNamed:@"cailing.png"];
        } else if (indexPath.row == 4) {
            cell.imageView.image = [UIImage imageNamed:@"zaixiantinggemianliuliang.png"];
        }
        if (indexPath.row != 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        return cell;
    } else if (indexPath.section == 3) {
        NSMutableArray* array03 = [NSMutableArray arrayWithObjects:@"小工具",@"设置",@"夜间模式",@"定时关闭",@"音乐黑名单",@"鲸云音效",@"添加Siri捷径",@"音乐闹钟",@"青少年模式",nil];
        cell.textLabel.text = [array03 objectAtIndex:indexPath.row];
        if (indexPath.row == 0) {
            cell.textLabel.font = [UIFont systemFontOfSize:14];
        }
        if (indexPath.row == 2) {
            UISwitch* yejian = [[UISwitch alloc] init];
            [yejian addTarget:self action:@selector(changeSwitch) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = yejian;
        }
        cell.selectionStyle = UITableViewCellEditingStyleNone;
        if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"shezhi.png"];
        } else if (indexPath.row == 2) {
            cell.imageView.image = [UIImage imageNamed:@"yejian.png"];
        } else if (indexPath.row == 3) {
            cell.imageView.image = [UIImage imageNamed:@"dingshiguanbi.png"];
        } else if (indexPath.row == 4) {
            cell.imageView.image = [UIImage imageNamed:@"heimingdanx.png"];
        } else if (indexPath.row == 5) {
            cell.imageView.image = [UIImage imageNamed:@"jingyunyinxiaopt-wangyiicon.png"];
        } else if (indexPath.row == 6) {
            cell.imageView.image = [UIImage imageNamed:@"cebianlan_Siri_44.png"];
        } else if (indexPath.row == 7) {
            cell.imageView.image = [UIImage imageNamed:@"yinlenaozhong-2.png"];
        } else if (indexPath.row == 8) {
            cell.imageView.image = [UIImage imageNamed:@"cebianlan_qingshaonianmoshi_.png"];
        }
        if (indexPath.row != 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        return cell;
    } else if (indexPath.section == 4) {
        NSMutableArray* array04 = [NSMutableArray arrayWithObjects:@"",@"我的订单",@"优惠券",@"分享网易云音乐",@"关于",nil];
        cell.textLabel.text = [array04 objectAtIndex:indexPath.row];
        cell.selectionStyle = UITableViewCellEditingStyleNone;
        if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"74wodedingdan.png"];
        } else if (indexPath.row == 2) {
            cell.imageView.image = [UIImage imageNamed:@"youhuiquan.png"];
        } else if (indexPath.row == 3) {
            cell.imageView.image = [UIImage imageNamed:@"share.png"];
        } else if (indexPath.row == 4) {
            cell.imageView.image = [UIImage imageNamed:@"guanyu.png"];
        }
        if (indexPath.row != 0) {
                  cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        return cell;
    } else if (indexPath.section == 5) {
        cell.textLabel.text = @"退出登录";
//        cell.frame = CGRectMake(150, 10, 100, 25);
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
        cell.textLabel.textColor = [UIColor redColor];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellEditingStyleNone;

        return cell;
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
        return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}
- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}
- (void) changeSwitch
{

}
- (void) pressSign:(UIButton*) btn
{
//    btn.selected = !btn.selected;
    
    if(btn.selected) {
        [btn setImage:[UIImage imageNamed:@"qiandao.png"] forState:UIControlStateNormal];
    } else {
        [btn setImage:[UIImage imageNamed:@"已签到.png"] forState:UIControlStateNormal];
    }
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
