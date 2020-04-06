//
//  LazySingleton.m
//  SingletonPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "LazySingleton.h"

@implementation LazySingleton

+ (instancetype)sharedInstance {
    return [[self alloc] init]; //alloc最终会调用allocWithZone方法
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static LazySingleton *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ //dispatch_once里只会调用一次，是线程安全的
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

@end
