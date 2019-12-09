//
//  ScrollBtnModel.h
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2018 Person. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollBtnModel : NSObject

@property(nonatomic,copy)NSString *title;
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat duration;
@property(nonatomic,assign)CGFloat y;
@property(nonatomic,assign)CGFloat allowNextTime;

@end

NS_ASSUME_NONNULL_END
