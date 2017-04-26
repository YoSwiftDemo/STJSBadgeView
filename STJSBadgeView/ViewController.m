//
//  ViewController.m
//  STJSBadgeView
//
//  Created by 岳克奎 on 17/4/17.
//  Copyright © 2017年 STYue. All rights reserved.
//

#import "ViewController.h"
#import "JSBadgeView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //构建某个view的JSBadgeView
    JSBadgeView *jsBadgeView = [[JSBadgeView alloc]initWithParentView:_textView
                                                            alignment:JSBadgeViewAlignmentTopRight];
    //调整
    //显示条数 显示的位置 默认 0 0
    jsBadgeView.badgePositionAdjustment = CGPointMake(0, 0);
    //多个的badge
    jsBadgeView.tag =1001;
    //背景色
    jsBadgeView.badgeBackgroundColor = [UIColor blueColor];
    //没有反光面
    jsBadgeView.badgeOverlayColor = [UIColor clearColor];
    //外圈的颜色，默认是白色
    jsBadgeView.badgeStrokeColor = [UIColor blackColor]; //
    
    jsBadgeView.badgeText = @"99+"; //如果不显示就设置为空 nil
    //当更新数字时，最好刷新，不然由于frame固定的，数字为2位时，红圈变形
    [jsBadgeView setNeedsLayout];
    // alloc+设置文字就够了，默认状态就可以了
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
