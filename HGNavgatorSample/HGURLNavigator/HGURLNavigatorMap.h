//
//  HGURLNavigatorMap.h
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HGURLNavigatorMap : NSObject

@property (nonatomic, strong, readonly) NSDictionary *data;

- (void)mapFrom:(NSString *)urlPath toViewController:(Class)targetClass;

@end
