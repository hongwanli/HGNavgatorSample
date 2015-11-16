//
//  HGURLNavigatorProtocol.h
//  HGNavgatorSample
//
//  Created by XiaoDou on 15/11/13.
//  Copyright © 2015年 北京嗨购电子商务有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HGURLNavigatorProtocol <NSObject>
/**
 *  控制器必须遵从此协议方法才能打开
 *
 *  @param URL   协议
 *  @param query 传入参数
 *
 *  @return 遵从此协议的控制器
 */
- (instancetype)initWithNavigatorURL:(NSURL *)URL query:(NSDictionary *)query;

@end
