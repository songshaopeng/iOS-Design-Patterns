//
//  Factory.h
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

NS_ASSUME_NONNULL_BEGIN

// 工厂类：抽象工厂
@interface Factory : NSObject

// 只声明，未实现，具体的实现由子类实现，这里也可以使用协议定义方法
+ (Appliance *)factoryWithString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
