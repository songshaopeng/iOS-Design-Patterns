//
//  ViewController.m
//  AdapterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Television1.h"
#import "IphoneAdapter1.h"
#import "Television2.h"
#import "IphoneAdapter2.h"
#import "Fish.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test1];
//    [self test2];
//    [self test3];
}

// 对象适配器
- (void)test1 {
    Television1 *tv = [Television1 new];
    [tv charge];
    
    IphoneAdaptee1 *adaptee = [IphoneAdaptee1 new];
    IphoneAdapter1 *adapter = [[IphoneAdapter1 alloc] initWithAdaptee:adaptee];
    [adapter charge];
    
    /**
     打印结果：
     
     电视充电220v
     苹果充电5v
     */
}

// 类适配器
- (void)test2 {
    Television2 *tv = [Television2 new];
    [tv charge];
    
    IphoneAdapter2 *adapter = [IphoneAdapter2 new];
    [adapter charge];
    
    /**
    打印结果：
    
    电视充电220v
    苹果充电5v
    */
}

// 缺省适配器
- (void)test3 {
    Fish *fish = [Fish new];
    [fish eat];
    [fish swim];
    
    /**
     打印结果：
     
     鱼儿吃鱼饵
     鱼儿能游泳
     */
}






@end
