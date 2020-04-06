//
//  Command.h
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 创建一个Command类，有一个execute()方法，表示抽象命令类
@interface Command : NSObject
- (void)execute;
@end

NS_ASSUME_NONNULL_END
