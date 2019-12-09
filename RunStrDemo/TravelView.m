//
//  TravelView.m
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2018 Person. All rights reserved.
//

#import "TravelView.h"
#import "ScrollBtnModel.h"
#import "ScrollControl.h"
#import "NSString+UILabelWidth.h"

@interface TravelView ()

@property (nonatomic, assign)CGFloat second;
@property(nonatomic,strong)NSMutableArray *btnArray;
@property (nonatomic, assign)CGFloat allowTime;

@end

@implementation TravelView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}
-(void)setupUI{
    self.backgroundColor = UIColor.whiteColor;
    self.btnArray = NSMutableArray.new;
    self.modelsArray = NSMutableArray.new;
    
    for (int i=0; i<20; i++) {
        ScrollControl *c = [[ScrollControl alloc]initWithFrame:CGRectMake(600, 100, 15, 30)];
        [self addSubview:c];
        [self.btnArray addObject:c];
    }
}
-(void)timeClick{
    self.second+=0.001;
    if (self.second>self.allowTime) {
        if(self.modelsArray.count)NSLog(@"78行⚠️%f---%f",self.second,self.allowTime);
        [self checkArray];
    }
}
-(void)showAction:(ScrollBtnModel *)model btn:(ScrollControl *)c{
    NSLog(@"84行⚠️%zd⚠️-%zd⚠️",self.modelsArray.count,self.btnArray.count);
    c.model = model;
    c.frame = CGRectMake(self.frame.size.width, 0, model.width, 30);
    self.second=0;
    self.allowTime = model.allowNextTime+0.15;
    [self.modelsArray removeObjectAtIndex:0];
    [UIView animateWithDuration:model.duration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        c.frame = CGRectMake(-model.width, 0, model.width, 30);
    } completion:^(BOOL finished) {
        c.model = nil;
    }];
}
-(void)checkArray{
    if (self.modelsArray.count) {
        ScrollBtnModel *model = self.modelsArray[0];
        for (int i=0; i<self.btnArray.count; i++) {
            ScrollControl *c = self.btnArray[i];
            if (c.model==nil) {
                [self showAction:model btn:c];
                break;
            }
        }
    }else{
        [self distroy];
    }
}
-(void)setupTimer{
    if (self.timer==nil) {
        self.timer = [NSTimer timerWithTimeInterval:0.001 target:self selector:@selector(timeClick) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop]addTimer:self.timer forMode:NSRunLoopCommonModes];
        self.timer.fireDate = NSDate.distantPast;
    }
}
-(void)distroy{
    [self.timer invalidate];
    self.timer = nil;
}
- (void)dealloc
{
    NSLog(@"⚠️释放");
}
@end
