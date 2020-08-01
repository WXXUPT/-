//
//  ViewWithFirst.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/17.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewWithFirst.h"

@implementation ViewWithFirst

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.portBtn = [UIImageView new];
    self.signBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.nameLable = [UILabel new];
    
    [self.contentView addSubview:_portBtn];
    [self.contentView addSubview:_signBtn];
    [self.contentView addSubview:_nameLable];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    
//    [_portBtn setImage:[UIImage imageNamed:@"touxiang.png"] forState:UIControlStateNormal];
    _portBtn.frame = CGRectMake(15, 15, 60, 60);
    
//    [_signBtn setImage:[UIImage imageNamed:@"qiandao.png"] forState:UIControlStateNormal];
    _signBtn.frame = CGRectMake(350, 15, 35, 35);
    
//    _nameLable.text = @"普通人勾勾";
//    _nameLable.font = [UIFont systemFontOfSize:20];
    _nameLable.frame = CGRectMake(95, 20, 150, 25);

}
@end
