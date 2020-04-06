//
//  Department.h
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FulltimeEmployee.h"
#import "PartTimeEmployee.h"

NS_ASSUME_NONNULL_BEGIN

// 部门类：抽象访问者类
@interface Department : NSObject
// OC只有Override重写，不能Overload重载，所以这里命名方法不同
// 声明一组访问方法，用于访问不同类型的具体元素
- (void)visitFulltimeEmployee:(FulltimeEmployee *)employee;
- (void)visitPartTimeEmployee:(PartTimeEmployee *)employee;
@end

NS_ASSUME_NONNULL_END
