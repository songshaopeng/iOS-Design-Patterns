//
//  EmployeeList.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "EmployeeList.h"

@interface EmployeeList ()
@property(nonatomic, strong) NSMutableArray *list; //定义一个集合用于存储员工对象
@end

@implementation EmployeeList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [NSMutableArray array];
    }
    return self;
}

- (void)add:(Employee *)employee {
    [self.list addObject:employee];
}

- (void)remove:(Employee *)employee {
    if ([self.list containsObject:employee]) {
        [self.list removeObject:employee];
    }
}

- (void)accept:(Department *)department {
    // 遍历访问员工集合中的每一个员工对象
    for (Employee *employee in self.list) {
        [employee accept:department];
    }
}

@end
