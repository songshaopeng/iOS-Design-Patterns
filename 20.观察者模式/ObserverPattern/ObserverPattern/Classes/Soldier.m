//
//  Soldier.m
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Soldier.h"
#import "Terrorist.h"

@implementation Soldier

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)updateWithSubject:(Subject *)subject {
    Terrorist *terrorist = (Terrorist *)subject;
    NSLog(@"%@反击, %@的hp = %ld", self.name, terrorist.name, terrorist.hp);
}

@end
