//
//  Person.h
//  ProxyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuySomething.h"

NS_ASSUME_NONNULL_BEGIN

// 然后创建一个Person类，遵守BuySomething协议，表示真实主题角色
@interface Person : NSObject <BuySomething>
@property (nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
