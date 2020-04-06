//
//  LiSi.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "LiSi.h"
#import "Mediator.h"

@implementation LiSi

- (void)sendMessage:(NSString *)message {
    NSLog(@"李四发送消息：%@", message);
    [self.mediator sendMessage:message colleague:self];
}

- (void)getMessage:(NSString *)message {
    NSLog(@"李四接收消息：%@", message);
}

@end
