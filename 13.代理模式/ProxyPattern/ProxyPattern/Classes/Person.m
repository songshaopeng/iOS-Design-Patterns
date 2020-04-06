//
//  Person.m
//  ProxyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)buyLV {
    NSLog(@"%@购买了LV包包", self.name);
}

- (void)buyChanel {
    NSLog(@"%@购买了香奈儿香水", self.name);
}

@end
