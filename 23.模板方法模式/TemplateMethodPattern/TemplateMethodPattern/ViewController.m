//
//  ViewController.m
//  TemplateMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
#import "Leader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Employee *employee = [Employee new];
    [employee work];
    NSLog(@"---------------------");
    
    Leader *leader = [Leader new];
    [leader work];
    
    /**
     打印结果：
     
     电脑开机
     程序猿努力敲代码
     Windows电脑需要关机
     电脑关机
     ---------------------
     电脑开机
     领导指挥大家敲代码
     MacBook Pro不需要关机
     */
}


@end
