//
//  Mediator.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Mediator.h"

@interface Mediator ()

@end

@implementation Mediator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _colleagues = [NSMutableArray array];
    }
    return self;
}

- (void)add:(Colleague *)colleague {
    [self.colleagues addObject:colleague];
}

- (void)sendMessage:(NSString *)message colleague:(Colleague *)colleague {}

@end
