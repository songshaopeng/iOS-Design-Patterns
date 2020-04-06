//
//  AbstractIterator.h
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 先创建一个AbstractIterator协议，里面有一些迭代器的方法，表示抽象迭代器
@protocol AbstractIterator <NSObject>
- (void)next;
- (BOOL)isLast;
- (id)getCurrentItem;
@end

typedef id<AbstractIterator> AbstractIterator;

NS_ASSUME_NONNULL_END
