//
//  Customer.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (instancetype)initWithCommand:(Command *)command {
    self = [super init];
    if (self) {
        _command = command;
    }
    return self;
}

- (void)needFood {
    [self.command execute];
}

@end
