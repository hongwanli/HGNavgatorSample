//
//  HGURLNavigatorMap.m
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import "HGURLNavigatorMap.h"

@interface HGURLNavigatorMap () {
    NSMutableDictionary *_innerMap;
}

@end

@implementation HGURLNavigatorMap

- (instancetype)init {
    self = [super init];
    if (self) {
        _innerMap = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

- (void)mapFrom:(NSString *)urlPath toViewController:(Class)targetClass {
    if (urlPath && targetClass) {
        [_innerMap setObject:targetClass forKey:urlPath];
    }
}

- (NSDictionary *)data {
    return _innerMap;
}

@end
