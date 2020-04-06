//
//  ViewController.m
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "TeamLeader.h"
#import "DeparmentManager.h"
#import "CTO.h"
#import "PurchaseRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建对象
    Leader *teamLeader, *manager, *cto;
    teamLeader = [[TeamLeader alloc] initWithName:@"张三"];
    manager = [[DeparmentManager alloc] initWithName:@"李四"];
    cto = [[CTO alloc] initWithName:@"王五"];
    
    // 创建职责链
    teamLeader.successor = manager;
    manager.successor = cto;
    
    // 创建采购单
    PurchaseRequest *taxi = [[PurchaseRequest alloc] initWithPrice:60 purpose:@"加班太晚，需要打车"];
    [teamLeader handleRequest:taxi];
    
    PurchaseRequest *iphone = [[PurchaseRequest alloc] initWithPrice:1500 purpose:@"购买测试机"];
    [teamLeader handleRequest:iphone];
    
    PurchaseRequest *mac = [[PurchaseRequest alloc] initWithPrice:16000 purpose:@"购买苹果电脑"];
    [teamLeader handleRequest:mac];
    
    PurchaseRequest *diamond = [[PurchaseRequest alloc] initWithPrice:80000 purpose:@"购买钻石"];
    [teamLeader handleRequest:diamond];
    
    /**
     打印结果：
     
     审批组长：张三, 金额：60.00, 目的：加班太晚，需要打车
     审批部门经理：李四, 金额：1500.00, 目的：购买测试机
     审批技术总监：王五, 金额：16000.00, 目的：购买苹果电脑
     金额80000.00超过预算，不能购买钻石
     */
    
}


@end
