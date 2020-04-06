//
//  Employee.h
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Department;
// 员工类：抽象元素类
@interface Employee : NSObject
@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *workTime;
- (instancetype)initWithName:(NSString *)name workTime:(NSString *)workTime;
- (void)accept:(Department *)department; //接受一个抽象访问者访问
@end

NS_ASSUME_NONNULL_END
