//
//  HGURLNavigator.h
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HGURLNavigatorAction.h"
#import "HGURLNavigatorMap.h"
#import "HGURLNavigatorProtocol.h"

@interface HGURLNavigator : NSObject

@property (nonatomic, strong, readonly) HGURLNavigatorMap *urlMap;

+ (instancetype)navigator;

- (void)openURLAction:(HGURLNavigatorAction *)urlAction;

@end
