//
//  DirectionExpression.h
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "AbstractExpression.h"

NS_ASSUME_NONNULL_BEGIN

// 方向解释：终结符表达式
@interface DirectionExpression : AbstractExpression
@property(nonatomic, copy) NSString *direction;
- (instancetype)initWithDirection:(NSString *)direction;
@end

NS_ASSUME_NONNULL_END
