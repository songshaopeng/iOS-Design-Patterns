//
//  Decorator.h
//  DecoratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "House.h"

NS_ASSUME_NONNULL_BEGIN

// 是抽象装饰类
@interface Decorator : House
- (instancetype)initWithHouse:(House *)house;  //注入一个抽象构件类型的对象
@end

NS_ASSUME_NONNULL_END
