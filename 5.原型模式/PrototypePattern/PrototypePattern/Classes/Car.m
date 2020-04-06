//
//  Car.m
//  PrototypePattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize name = _name;

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    Car *car = [[[self class] alloc] initWithName:_name]; //创建一份新的对象
    return car;
}

- (void)addCar:(Car *)car {
    
}

- (void)removeCar:(Car *)car {
    
}

- (NSInteger)carsCount {
    return 0;
}

@end
