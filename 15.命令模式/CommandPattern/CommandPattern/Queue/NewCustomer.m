//
//  NewCustomer.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "NewCustomer.h"

@implementation NewCustomer

- (instancetype)initWithQueue:(CommandQueue *)queue {
    self = [super init];
    if (self) {
        _queue = queue;
    }
    return self;
}

- (void)needFood {
    [self.queue execute];
}

@end
