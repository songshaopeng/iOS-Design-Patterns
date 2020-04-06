//
//  DirectionExpression.m
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "DirectionExpression.h"

@implementation DirectionExpression

- (instancetype)initWithDirection:(NSString *)direction {
    self = [super init];
    if (self) {
        _direction = direction;
    }
    return self;
}

- (NSString *)interpretWithContext:(Context *)context {
    NSString *result = [NSString stringWithFormat:@"[%@]", [context getObjectWithKey:self.direction]];
    return result;
}

@end
