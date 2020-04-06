//
//  EmployeeList.h
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

// 员工列表类：对象结构
@interface EmployeeList : NSObject
- (void)add:(Employee *)employee;
- (void)remove:(Employee *)employee;
- (void)accept:(Department *)department;
@end

NS_ASSUME_NONNULL_END
