//
//  CommandQueue.h
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

// 比如现在不是一个个点菜，而是用菜单一起点菜，那么可以创建一个菜单类来存放多个命令, 命令队列
@interface CommandQueue : NSObject
- (void)addCommand:(Command *)command;
- (void)removeCommand:(Command *)command;
- (void)execute;
@end

NS_ASSUME_NONNULL_END
