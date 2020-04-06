//
//  Customer.h
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

// 创建一个Customer类，有一个Command实例，表示调用者
@interface Customer : NSObject
@property (nonatomic, strong) Command *command;
- (instancetype)initWithCommand:(Command *)command;
- (void)needFood;
@end

NS_ASSUME_NONNULL_END
