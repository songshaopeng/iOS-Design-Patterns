//
//  Decorator.m
//  DecoratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Decorator.h"

@interface Decorator ()
@property(nonatomic, strong) House *house; //维持一个对抽象构件对象的引用
@end

@implementation Decorator

- (instancetype)initWithHouse:(House *)house {
    self = [super init];
    if (self) {
        _house = house;
    }
    return self;
}

- (void)decorateHouse { //调用原有业务方法
    if (self.house) {
        [self.house decorateHouse];
    }
}

@end
