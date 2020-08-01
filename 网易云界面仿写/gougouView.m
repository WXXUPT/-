//
//  gougouView.m
//  网易云界面仿写
//
//  Created by 王旭 on 2020/7/18.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "gougouView.h"

@implementation gougouView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame: frame]) {
        self.btnKing = [UIButton buttonWithType:UIButtonTypeCustom];
        self.lableKing = [UILabel new];
         
        [self.contentView addSubview:_btnKing];
        [self.contentView addSubview:_lableKing];
    }
    return self;
}
- (void)layoutSubviews {
    _btnKing.frame = CGRectMake(31, 15, 32, 32) ;
    _lableKing.frame = CGRectMake(0, 15, 94, 98) ;
    _lableKing.font = [UIFont systemFontOfSize:15] ;
}

@end
