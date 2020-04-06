//
//  Leader.m
//  TemplateMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Leader.h"

@implementation Leader

- (void)coding { // 实现抽象方法
    NSLog(@"领导指挥大家敲代码");
}

- (BOOL)isNeedCloseComputer { // 重写钩子方法
    NSLog(@"MacBook Pro不需要关机");
    return NO;
}

@end
