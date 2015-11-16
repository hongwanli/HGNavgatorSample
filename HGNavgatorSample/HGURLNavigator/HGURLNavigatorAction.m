//
//  HGURLNavigatorAction.m
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import "HGURLNavigatorAction.h"

@interface HGURLNavigatorAction ()

@property (nonatomic, copy, readwrite) NSString *urlPath;
@property (nonatomic, strong, readwrite) NSDictionary *query;

@end

@implementation HGURLNavigatorAction

+ (instancetype)actionWithPath:(NSString *)urlPath {
    HGURLNavigatorAction *urlAction = [[HGURLNavigatorAction alloc] initWithPath:urlPath];
    
    return urlAction;
}

- (instancetype)initWithPath:(NSString *)urlPath {
    self = [super init];
    if (self) {
        _urlPath = urlPath;
    }
    
    return self;
}

- (void)applayQuery:(NSDictionary *)query {
    _query = query;
}

@end
