//
//  Subject.m
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Subject.h"

@interface Subject ()

@end

@implementation Subject

- (instancetype)init
{
    self = [super init];
    if (self) {
        _observerList = [NSMutableArray array];
    }
    return self;
}

- (void)attach:(Observer)observer {
    [self.observerList addObject:observer];
}

- (void)detach:(Observer)observer {
    [self.observerList removeObject:observer];
}

- (void)notify {}

- (NSArray *)getObserverList {
    return [self.observerList copy];
}

@end
