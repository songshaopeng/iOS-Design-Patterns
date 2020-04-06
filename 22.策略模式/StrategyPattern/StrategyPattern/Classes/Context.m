//
//  Context.m
//  StrategyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Context.h"

@implementation Context

- (instancetype)initWithStrategy:(SortingStrategy)strategy {
    self = [super init];
    if (self) {
        _strategy = strategy;
    }
    return self;
}

- (NSArray *)sortWithArray:(NSArray *)array {
    return [self.strategy sortingAlgorithmWithArray:array]; //调用策略类中的算法
}

@end
