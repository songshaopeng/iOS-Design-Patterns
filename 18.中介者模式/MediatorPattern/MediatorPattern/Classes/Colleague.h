//
//  Colleague.h
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Mediator;
// 创建Colleague类，表示抽象同事类
@interface Colleague : NSObject
@property(nonatomic, strong) Mediator *mediator; //维持一个抽象中介者的引用
- (instancetype)initWithMediator:(Mediator *)mediator;
- (void)sendMessage:(NSString *)message; //定义依赖方法，与中介者进行通信
- (void)getMessage:(NSString *)message; //声明自身方法，处理自己的行为
@end

NS_ASSUME_NONNULL_END
