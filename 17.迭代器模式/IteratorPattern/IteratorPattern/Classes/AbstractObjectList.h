//
//  AbstractObjectList.h
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractIterator.h"

NS_ASSUME_NONNULL_BEGIN

// 抽象聚合类
@interface AbstractObjectList : NSObject
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
- (NSArray *)getObjects;
// 声明创建迭代器对象的抽象工厂方法
- (AbstractIterator)createIterator;
@end

NS_ASSUME_NONNULL_END
