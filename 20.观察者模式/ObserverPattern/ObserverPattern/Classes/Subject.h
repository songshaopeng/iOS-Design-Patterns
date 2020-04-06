//
//  Subject.h
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN

// 抽象目标类
@interface Subject : NSObject
@property(nonatomic, strong) NSMutableArray *observerList; //定义一个观察者集合用于存储所有观察者对象
- (void)attach:(Observer)observer; //注册方法，用于向观察者集合中增加一个观察者
- (void)detach:(Observer)observer; //注销方法，用于在观察者集合中删除一个观察者
- (void)notify; //声明抽象通知方法
- (NSArray *)getObserverList;
@end

NS_ASSUME_NONNULL_END
