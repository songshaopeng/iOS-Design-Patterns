//
//  Context.h
//  StrategyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortingStrategy.h"

NS_ASSUME_NONNULL_BEGIN

// 环境类：使用算法的角色
@interface Context : NSObject
@property(nonatomic, strong) SortingStrategy strategy; //维持一个对抽象策略类的引用
- (instancetype)initWithStrategy:(SortingStrategy)strategy;
- (NSArray *)sortWithArray:(NSArray *)array;
@end

NS_ASSUME_NONNULL_END
