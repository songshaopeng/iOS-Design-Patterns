//
//  TeamLeader.m
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "TeamLeader.h"

@implementation TeamLeader

- (void)handleRequest:(PurchaseRequest *)request {
    if (request.price < 200) { // 处理请求
        NSLog(@"审批组长：%@, 金额：%.2f, 目的：%@", self.name, request.price, request.purpose);
    } else { // 转发请求
        [self.successor handleRequest:request];
    }
}

@end
