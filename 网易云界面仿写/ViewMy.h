//
//  ViewMy.h
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/16.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewMy : UIViewController
<UITableViewDelegate , UITableViewDataSource>
{
    UITableView* _tableView;
}
@property (nonatomic , strong) UITableView* tableView;
@end

NS_ASSUME_NONNULL_END
