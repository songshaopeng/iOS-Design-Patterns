//
//  Coder.m
//  TemplateMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Coder.h"

@implementation Coder

- (void)work {
    [self startComputer];
    [self coding];
    if ([self isNeedCloseComputer]) {
        [self closeComputer];
    }
}

- (void)startComputer {
    NSLog(@"电脑开机");
}

- (void)closeComputer {
    NSLog(@"电脑关机");
}

- (BOOL)isNeedCloseComputer {
    NSLog(@"Windows电脑需要关机");
    return YES;
}

@end
