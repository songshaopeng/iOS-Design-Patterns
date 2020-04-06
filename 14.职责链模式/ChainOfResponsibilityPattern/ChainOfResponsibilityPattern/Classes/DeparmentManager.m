//
//  DeparmentManager.m
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "DeparmentManager.h"

@implementation DeparmentManager

- (void)handleRequest:(PurchaseRequest *)request {
    if (request.price < 2000) {
        NSLog(@"审批部门经理：%@, 金额：%.2f, 目的：%@", self.name, request.price, request.purpose);
    } else {
        [self.successor handleRequest:request];
    }
}

@end
