//
//  ITDepartment.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ITDepartment.h"

@implementation ITDepartment

- (void)visitFulltimeEmployee:(FulltimeEmployee *)employee {
    NSLog(@"IT部门-全职：姓名%@, %@", employee.name, employee.workTime);
}

- (void)visitPartTimeEmployee:(PartTimeEmployee *)employee {
    NSLog(@"IT部门-兼职：姓名%@, %@", employee.name, employee.workTime);
}

@end
