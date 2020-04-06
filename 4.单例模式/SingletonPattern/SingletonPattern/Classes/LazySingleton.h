//
//  LazySingleton.h
//  SingletonPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 懒汉式单例
@interface LazySingleton : NSObject
+ (instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
