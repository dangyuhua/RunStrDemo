//
//  NSString+UILabelWidth.m
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2018 Person. All rights reserved.
//

#import "NSString+UILabelWidth.h"

@implementation NSString (UILabelWidth)

- (CGSize)sizeThatFits:(CGSize)size withFont:(UIFont*)font{
    static UILabel* textLabel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        textLabel=[[UILabel alloc]init];
        textLabel.numberOfLines=0;
    });
    
    textLabel.font=font;
    textLabel.text=self;
    
    CGSize textSize= [textLabel sizeThatFits:size];
    
    return textSize;
    
}

@end
