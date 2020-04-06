//
//  AbstractExpression.h
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Context.h"

NS_ASSUME_NONNULL_BEGIN

// 创建AbstractExpression抽象表达式，有一个interpretWithContext()方法
@interface AbstractExpression : NSObject
- (NSString *)interpretWithContext:(Context *)context;
@end

NS_ASSUME_NONNULL_END
