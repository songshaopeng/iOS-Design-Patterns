//
//  HRDepartment.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "HRDepartment.h"

@implementation HRDepartment

// 实现人力资源部对全职员工的访问
- (void)visitFulltimeEmployee:(FulltimeEmployee *)employee {
    NSLog(@"HR部门-全职：姓名%@, %@", employee.name, employee.workTime);
}

// 实现人力资源部对兼职员工的访问
- (void)visitPartTimeEmployee:(PartTimeEmployee *)employee {
    NSLog(@"HR部门-兼职：姓名%@, %@", employee.name, employee.workTime);
}

@end
