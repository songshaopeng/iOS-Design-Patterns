//
//  WangWu.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "WangWu.h"
#import "Mediator.h"

@implementation WangWu

- (void)sendMessage:(NSString *)message {
    NSLog(@"王五发送消息：%@", message);
    [self.mediator sendMessage:message colleague:self];
}

- (void)getMessage:(NSString *)message {
    NSLog(@"王五接收消息：%@", message);
}

@end
