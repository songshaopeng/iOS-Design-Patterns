//
//  LivingRoomDecorator.m
//  DecoratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "LivingRoomDecorator.h"

@implementation LivingRoomDecorator

- (void)decorateHouse {
    [super decorateHouse]; //调用原有业务方法
    NSLog(@"增加对客厅的装修"); //调用新增业务方法
}

@end
