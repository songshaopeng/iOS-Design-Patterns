//
//  PartTimeEmployee.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "PartTimeEmployee.h"
#import "Department.h"

@implementation PartTimeEmployee

- (void)accept:(Department *)department {
    [department visitPartTimeEmployee:self];
}

@end
