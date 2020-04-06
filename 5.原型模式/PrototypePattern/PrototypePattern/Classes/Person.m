//
//  Person.m
//  PrototypePattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Person.h"
#import "Car.h"

@interface Person ()
@property (nonatomic, strong) NSMutableArray *carsArr;
@end

@implementation Person

/**
@synthesize 三个作用：
1、生成带下划线变量
2、生成setter方法
3、生成getter方法
*/
@synthesize name = _name;

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _carsArr = [NSMutableArray array];
    }
    return self;
}

- (void)addCar:(Car *)car {
    [self.carsArr addObject:car];
}

- (void)removeCar:(Car *)car {
    if ([self.carsArr containsObject:car]) {
        [self.carsArr removeObject:car];
    }
}

- (NSInteger)carsCount {
    return self.carsArr.count;
}

- (NSInteger)getCarsCount {
    return self.carsArr.count;
}

- (id)copyWithZone:(NSZone *)zone{
    Person *p = [[[self class] alloc] initWithName:_name]; //创建新对象
    for (Car *car in self.carsArr) {
        Car *c = [car copy]; //把Person的Car也复制一份
        [p addCar:c];
    }
    return p;
}


@end
