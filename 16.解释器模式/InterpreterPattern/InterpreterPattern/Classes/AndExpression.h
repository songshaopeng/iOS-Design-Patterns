//
//  AndExpression.h
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "AbstractExpression.h"

NS_ASSUME_NONNULL_BEGIN

// And解释：非终结符表达式
@interface AndExpression : AbstractExpression
@property(nonatomic, strong) AbstractExpression *leftExpression;
@property(nonatomic, strong) AbstractExpression *rightExpression;
- (instancetype)initWithLeft:(AbstractExpression *)left right:(AbstractExpression *)right;
@end

NS_ASSUME_NONNULL_END
