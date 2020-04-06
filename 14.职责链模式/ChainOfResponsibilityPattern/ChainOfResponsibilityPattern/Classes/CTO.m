//
//  CTO.m
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "CTO.h"

@implementation CTO

- (void)handleRequest:(PurchaseRequest *)request {
    if (request.price < 20000) {
        NSLog(@"审批技术总监：%@, 金额：%.2f, 目的：%@", self.name, request.price, request.purpose);
    } else {
        NSLog(@"金额%.2f超过预算，不能%@", request.price, request.purpose);
    }
}

@end
