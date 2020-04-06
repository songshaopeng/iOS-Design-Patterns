//
//  Person.h
//  StatePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MemberState.h"

NS_ASSUME_NONNULL_BEGIN

// 环境类
@interface Person : NSObject
// 其他属性值，该属性值的变化可能会导致对象状态发生变化
@property(nonatomic, assign) NSInteger money;
@property(nonatomic, strong) MemberState state; //维持一个对抽象状态对象的引用
- (void)playGame;
@end

NS_ASSUME_NONNULL_END
