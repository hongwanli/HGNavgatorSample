//
//  HGURLNavigatorAction.h
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HGURLNavigatorAction : NSObject

@property (nonatomic, copy, readonly) NSString *urlPath;
@property (nonatomic, strong, readonly) NSDictionary *query;

+ (instancetype)actionWithPath:(NSString *)urlPath;
- (void)applayQuery:(NSDictionary *)query;

@end
