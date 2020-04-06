//
//  Context.h
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 创建一个Context环境类，里面存放着需要解释的中英文
@interface Context : NSObject
- (NSString *)getObjectWithKey:(NSString *)key;
@end

NS_ASSUME_NONNULL_END
