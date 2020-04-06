//
//  Proxy.m
//  ProxyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Proxy.h"

@interface Proxy ()
@property (nonatomic, strong) Person *person;
@end

@implementation Proxy

- (instancetype)initWithPerson:(Person *)person {
    self = [super init];
    if (self) {
        _person = person;
    }
    return self;
}

- (void)buyLV {
    [self.person buyLV];
    NSLog(@"%@买包包送手环", self.person.name); //可以增加额外的操作
}

- (void)buyChanel {
    [self.person buyChanel];
}

@end
