//
//  Observer.h
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Subject;
// 抽象观察者，接口
@protocol Observer <NSObject>
- (void)updateWithSubject:(Subject *)subject; //声明响应方法
@end

typedef id<Observer> Observer;

NS_ASSUME_NONNULL_END
