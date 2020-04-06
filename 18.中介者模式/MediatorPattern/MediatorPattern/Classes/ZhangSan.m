//
//  ZhangSan.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ZhangSan.h"
#import "Mediator.h"

@implementation ZhangSan

- (void)sendMessage:(NSString *)message {
    NSLog(@"张三发送消息：%@", message);
    [self.mediator sendMessage:message colleague:self];
}

- (void)getMessage:(NSString *)message {
    NSLog(@"张三接收消息：%@", message);
}

@end
