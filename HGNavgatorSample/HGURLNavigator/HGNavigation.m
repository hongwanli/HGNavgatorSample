//
//  HGNavigation.m
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import "HGNavigation.h"
#import "HGNavigatorURLDefine.h"
#import "HGURLNavigator.h"
#import "HGTestVC.h"

@implementation HGNavigation

+ (void)setup {
    [[HGURLNavigator navigator].urlMap mapFrom:kPageURLTest toViewController:[HGTestVC class]];
}

@end
