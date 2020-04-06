//
//  HungrySingleton.h
//  SingletonPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 饿汉式单例
@interface HungrySingleton : NSObject
+ (instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
