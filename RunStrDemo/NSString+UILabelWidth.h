//
//  NSString+UILabelWidth.h
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2018 Person. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSString (UILabelWidth)

- (CGSize)sizeThatFits:(CGSize)size withFont:(UIFont*)font;

@end

NS_ASSUME_NONNULL_END
