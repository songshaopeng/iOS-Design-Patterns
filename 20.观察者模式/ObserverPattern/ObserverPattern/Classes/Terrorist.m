//
//  Terrorist.m
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Terrorist.h"

@implementation Terrorist

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        _hp = 100;
    }
    return self;
}

- (void)notify {
    NSLog(@"%@开始攻击了, hp = %ld", self.name, self.hp);
    
    // 遍历观察者集合，调用每一个观察者的响应方法
    for (Observer observer in self.observerList) {
        self.hp -= 25;
        [observer updateWithSubject:self];
    }
}

@end
