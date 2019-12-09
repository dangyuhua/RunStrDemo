//
//  ViewController.m
//  RunStrDemo
//
//  Created by 党玉华 on 2018/8/29.
//  Copyright © 2019 Person. All rights reserved.
//

#import "ViewController.h"
#import "ScrollControl.h"
#import "NSString+UILabelWidth.h"
#import "ScrollBtnModel.h"
#import "TravelView.h"

@interface ViewController ()

@property(nonatomic,strong)NSMutableArray *viArray;

@end

@implementation ViewController

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    for (int i=0; i<self.viArray.count; i++) {
        TravelView *vi = self.viArray[i];
        [vi distroy];
        [vi removeFromSuperview];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.viArray = NSMutableArray.new;
    self.view.backgroundColor = UIColor.whiteColor;
    CGFloat y = 10;
    for (int i=0; i<MAXFLOAT; i++) {
        if (y+40<self.view.frame.size.height) {
            TravelView *vi = [[TravelView alloc]initWithFrame:CGRectMake(0, y, self.view.frame.size.width, 30)];
            vi.y = y;
            [self.viArray addObject:vi];
            [self.view addSubview:vi];
            y+=40;
        }else{
            break;
        }
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    for (int i=0; i<5000; i++) {
        NSArray *array = [[NSArray alloc] initWithObjects:@"福建省佛教拉萨的房间里",@"u同意让我而言谓发的方式房贷首付发生的",@"放地方撒",@"如何防范回来收到回复可视电话发收到回复如何防范回来收到回复可视电话发收到回复",@"恶趣味蔷薇蔷薇恶趣味",@"9999",nil];
        int r = arc4random() % [array count];
        NSString *title = [array objectAtIndex:r];
        int q = arc4random() % [self.viArray count];
        TravelView *vi = [self.viArray objectAtIndex:q];
        CGFloat width = [title sizeThatFits:CGSizeMake(MAXFLOAT, MAXFLOAT) withFont:[UIFont systemFontOfSize:18]].width+10;
        ScrollBtnModel *model = ScrollBtnModel.new;
        model.title = title;
        model.width = width;
        model.y = vi.y;
        model.duration = (width+self.view.frame.size.width)/160;
        model.allowNextTime = width/160;
        [vi.modelsArray addObject:model];
        [vi setupTimer];
    }
}
- (void)dealloc{
    NSLog(@"⚠️%@⚠️",[self class]);
}


@end
