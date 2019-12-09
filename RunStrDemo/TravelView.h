//
//  TravelView.h
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2018 Person. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TravelView : UIView

@property(nonatomic,assign)CGFloat y;
@property(nonatomic,strong)NSTimer *timer;
@property(nonatomic,strong)NSMutableArray *modelsArray;

-(void)setupTimer;
-(void)distroy;

@end

NS_ASSUME_NONNULL_END
