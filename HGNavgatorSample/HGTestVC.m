//
//  HGTestVC.m
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import "HGTestVC.h"
#import "HGURLNavigatorProtocol.h"

@interface HGTestVC () <HGURLNavigatorProtocol>

@end

@implementation HGTestVC

- (instancetype)initWithNavigatorURL:(NSURL *)URL query:(NSDictionary *)query {
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"牛逼吧  哇咔咔";
}

@end
