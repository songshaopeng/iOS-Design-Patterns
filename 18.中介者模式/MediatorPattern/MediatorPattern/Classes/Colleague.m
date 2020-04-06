//
//  Colleague.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (instancetype)initWithMediator:(Mediator *)mediator {
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}

- (void)sendMessage:(NSString *)message {}
- (void)getMessage:(NSString *)message {}

@end
