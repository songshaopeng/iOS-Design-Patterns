//
//  ViewController.m
//  VisitorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "FulltimeEmployee.h"
#import "PartTimeEmployee.h"
#import "EmployeeList.h"
#import "ITDepartment.h"
#import "HRDepartment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Employee *zhangSan = [[FulltimeEmployee alloc] initWithName:@"张三" workTime:@"朝九晚五"];
    Employee *liSi = [[PartTimeEmployee alloc] initWithName:@"李四" workTime:@"苦逼的997"];
    Employee *xiaoHong = [[FulltimeEmployee alloc] initWithName:@"小红" workTime:@"朝九晚五"];
    Employee *xiaoLi = [[PartTimeEmployee alloc] initWithName:@"小丽" workTime:@"苦逼的996"];
    
    EmployeeList *list = [EmployeeList new];
    [list add:zhangSan];
    [list add:liSi];
    [list add:xiaoHong];
    [list add:xiaoLi];
    
    ITDepartment *IT = [ITDepartment new];
    [list accept:IT];
    NSLog(@"--------------------------");
    
    // 访问者模式：在系统中增加一种新的访问者，无须修改源代码，只要增加一个新的具体访问者类即可，比如新增HR部门
    // 但是如果新增Employee类型，则必定要修改Department，增加访问新类型的方法
    HRDepartment *HR = [HRDepartment new];
    [list accept:HR];
    
    /**
     打印结果：
     
     IT部门-全职：姓名张三, 朝九晚五
     IT部门-兼职：姓名李四, 苦逼的997
     IT部门-全职：姓名小红, 朝九晚五
     IT部门-兼职：姓名小丽, 苦逼的996
     --------------------------
     HR部门-全职：姓名张三, 朝九晚五
     HR部门-兼职：姓名李四, 苦逼的997
     HR部门-全职：姓名小红, 朝九晚五
     HR部门-兼职：姓名小丽, 苦逼的996
     */
}


@end
