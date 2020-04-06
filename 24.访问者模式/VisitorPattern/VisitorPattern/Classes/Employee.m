//
//  Employee.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWithName:(NSString *)name workTime:(NSString *)workTime {
    self = [super init];
    if (self) {
        _name = name;
        _workTime = workTime;
    }
    return self;
}

- (void)accept:(Department *)department {}

@end
