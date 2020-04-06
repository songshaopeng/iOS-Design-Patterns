//
//  AndExpression.m
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "AndExpression.h"

@implementation AndExpression

- (instancetype)initWithLeft:(AbstractExpression *)left right:(AbstractExpression *)right {
    self = [super init];
    if (self) {
        _leftExpression = left;
        _rightExpression = right;
    }
    return self;
}

- (NSString *)interpretWithContext:(Context *)context {
    NSString *leftStr = [self.leftExpression interpretWithContext:context];
    NSString *rightStr = [self.rightExpression interpretWithContext:context];
    NSString *result = [NSString stringWithFormat:@"%@ 再 %@", leftStr, rightStr];
    return result;
}

@end
