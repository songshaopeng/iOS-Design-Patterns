//
//  Proxy.h
//  ProxyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuySomething.h"
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

// 最后创建一个Proxy类，里面有一个Person对象，也遵守BuySomething协议，表示代理主题角色
@interface Proxy : NSObject <BuySomething>
- (instancetype)initWithPerson:(Person *)person;
@end

NS_ASSUME_NONNULL_END
