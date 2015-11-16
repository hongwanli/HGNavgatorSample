//
//  HGURLNavigator.m
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import "HGURLNavigator.h"
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@implementation HGURLNavigator

+ (instancetype)navigator {
    static dispatch_once_t onceToken;
    static HGURLNavigator *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[HGURLNavigator alloc] init];
    });
    
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _urlMap = [[HGURLNavigatorMap alloc] init];
    }
    
    return self;
}

- (void)openURLAction:(HGURLNavigatorAction *)urlAction {
    Class vcClass = nil;
    NSURL *url = [NSURL URLWithString:urlAction.urlPath];
    NSString *schema = [url.scheme stringByAppendingString:@"://"];
    
    for (NSString *urlKey in _urlMap.data.allKeys) {
        BOOL rs = [urlKey isEqualToString:schema];
        
        if (rs) {
            vcClass = _urlMap.data[urlKey];
            break;
        }
    }
    
    if (!vcClass) {
        NSLog(@"未能打开url path [%@] 对应的页面。", urlAction.urlPath);
        return;
    }
    
    if (![vcClass conformsToProtocol:@protocol(HGURLNavigatorProtocol)]) {
        NSAssert(NO, @"需要被HGURLNavigator导航的UIViewController以及其子类必须要\
                 实现HGURLNavigatorProtocol。");
    }
    
    NSMutableDictionary *query = [NSMutableDictionary dictionary];
    [query setValuesForKeysWithDictionary:urlAction.query];
    UIViewController<HGURLNavigatorProtocol> *vc = [[vcClass alloc] initWithNavigatorURL:url query:query];
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    UINavigationController *visiableNavigationViewController = [appDelegate visibleNavigationController];
    
    [visiableNavigationViewController pushViewController:vc animated:YES];
}

@end
