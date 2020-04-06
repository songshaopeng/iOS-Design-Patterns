//
//  WashRoomDecorator.m
//  DecoratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "WashRoomDecorator.h"

@implementation WashRoomDecorator

- (void)decorateHouse {
    [super decorateHouse];
    NSLog(@"增加对卫生间的装修");
}

@end
