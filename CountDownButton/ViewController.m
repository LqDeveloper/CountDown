//
//  ViewController.m
//  CountDownButton
//
//  Created by liquan on 2017/4/17.
//  Copyright © 2017年 liquan. All rights reserved.
//

#import "ViewController.h"
#import "CountDownButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CountDownButton *button = [[CountDownButton alloc]initWithIsAuto:YES];
    [self.view addSubview:button];
    [button setClickButtonBlock:^{
        NSLog(@"点击了按钮");
    }];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 30));
    }];
    
    [button setCompleteBlock:^{
        NSLog(@"倒计时完成");
    }];
    CountDownButton *bt  = [[CountDownButton alloc]initWithFrame:CGRectMake(100, 100, 100, 30) withIsAuto:NO];
    [self.view addSubview:bt];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
