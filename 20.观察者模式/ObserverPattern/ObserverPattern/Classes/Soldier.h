//
//  Soldier.h
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN

// 定义一个Soldier类，遵循Observer协议，实现协议的方法，表示具体观察者
@interface Soldier : NSObject <Observer>
@property(nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
