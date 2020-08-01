//
//  ViewWithSecond.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/17.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewWithSecond.h"

@implementation ViewWithSecond

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.view01 = [UIView new];
    self.view02 = [UIView new];
    self.view03 = [UIView new];
    self.view04 = [UIView new];
    
    [self.contentView addSubview:_view01];
    [self.contentView addSubview:_view02];
    [self.contentView addSubview:_view03];
    [self.contentView addSubview:_view04];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    
    _view01.frame = CGRectMake(7, 10, 37, 37);
    _view02.frame = CGRectMake(45+62, 10, 34, 37);
    _view03.frame = CGRectMake(45+62+45+62, 10, 37, 37);
    _view04.frame = CGRectMake(45+62+45+62+45+62, 10, 37, 37);
}
@end
