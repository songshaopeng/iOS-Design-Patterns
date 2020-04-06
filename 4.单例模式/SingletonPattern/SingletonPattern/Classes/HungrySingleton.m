//
//  HungrySingleton.m
//  SingletonPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "HungrySingleton.h"

static HungrySingleton *instance; //声明静态变量

@implementation HungrySingleton

+ (void)load { // 在类被加载的时候会调用一次load方法，这个时候进行初始化
    instance = [[super allocWithZone:NULL] init];
}

+ (instancetype)sharedInstance { // 统一对外方法
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone { //就算通过alloc创建的也是同一个instance
    return instance;
}

@end
