//
//  ScrollControl.m
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2018 Person. All rights reserved.
//

#import "ScrollControl.h"
#import "ScrollBtnModel.h"

@interface ScrollControl ()

@property(nonatomic,strong)UILabel *titleLabel;

@end

@implementation ScrollControl

- (void)setModel:(ScrollBtnModel *)model{
    _model = model;
    self.titleLabel.text = model.title;
}
- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    self.titleLabel.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        self.titleLabel.textColor = UIColor.blackColor;
        self.titleLabel.font = [UIFont systemFontOfSize:18];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.titleLabel];
    }
    return self;
}

@end
