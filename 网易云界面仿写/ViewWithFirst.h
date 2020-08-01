//
//  ViewWithFirst.h
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/17.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewWithFirst : UITableViewCell
@property (nonatomic , strong) UIImageView* portBtn; //头像按钮
@property (nonatomic , strong) UIButton* signBtn; //签到按钮
@property (nonatomic , strong) UILabel* nameLable; //用户名文本
@end

NS_ASSUME_NONNULL_END
