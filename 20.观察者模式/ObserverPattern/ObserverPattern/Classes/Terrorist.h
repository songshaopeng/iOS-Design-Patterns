//
//  Terrorist.h
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Subject.h"

NS_ASSUME_NONNULL_BEGIN

// 恐怖分子：具体目标类
@interface Terrorist : Subject
@property(nonatomic, assign) NSInteger hp; //生命值
@property(nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
