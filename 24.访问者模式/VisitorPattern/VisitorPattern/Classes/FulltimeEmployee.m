//
//  FulltimeEmployee.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "FulltimeEmployee.h"
#import "Department.h"

@implementation FulltimeEmployee

- (void)accept:(Department *)department {
    [department visitFulltimeEmployee:self]; // 调用访问者的访问方法
}

@end
