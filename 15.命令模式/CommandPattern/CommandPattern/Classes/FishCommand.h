//
//  FishCommand.h
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

// 然后创建三个类FishCommand、MuttonCommand和BeerCommand，都继承自Command类，与接收者相关联，表示具体命令类
@interface FishCommand : Command

@end

NS_ASSUME_NONNULL_END
