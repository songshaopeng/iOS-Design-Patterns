//
//  SortingStrategy.h
//  StrategyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 排序算法策略, 表示抽象策略类
@protocol SortingStrategy <NSObject>
- (NSArray *)sortingAlgorithmWithArray:(NSArray *)array; //声明抽象算法
@end

typedef id<SortingStrategy> SortingStrategy;

NS_ASSUME_NONNULL_END
