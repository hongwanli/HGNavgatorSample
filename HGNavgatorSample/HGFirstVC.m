//
//  HGFirstVC.m
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import "HGFirstVC.h"
#import "HGNavigatorURLDefine.h"
#import "HGURLNavigator.h"

@implementation HGFirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"试试";
    
    CGRect frame = CGRectMake(0, 0, 100, 100);
    UIButton *testButton = [UIButton buttonWithType:UIButtonTypeSystem];
    testButton.frame = frame;
    testButton.center = self.view.center;
    [testButton setTitle:@"点我试试" forState:UIControlStateNormal];
    [testButton addTarget:self action:@selector(handleTestButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton];
}

- (void)handleTestButton {
    HGURLNavigatorAction *urlAction = [HGURLNavigatorAction actionWithPath:kPageURLTest];
    [[HGURLNavigator navigator] openURLAction:urlAction];
}

@end
