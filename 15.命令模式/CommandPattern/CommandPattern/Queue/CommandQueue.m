//
//  CommandQueue.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "CommandQueue.h"

@interface CommandQueue ()
@property (nonatomic, strong) NSMutableArray<Command *> *commands;
@end

@implementation CommandQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        _commands = [NSMutableArray array];
    }
    return self;
}

- (void)addCommand:(Command *)command {
    [self.commands addObject:command];
}

- (void)removeCommand:(Command *)command {
    if ([self.commands containsObject:command]) {
        [self.commands removeObject:command];
    }
}

- (void)execute {
    for (Command *command in self.commands) { //一起执行所有的命令
        [command execute];
    }
}

@end
