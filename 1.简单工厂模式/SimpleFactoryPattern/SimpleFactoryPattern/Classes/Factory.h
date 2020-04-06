//
//  Factory.h
//  SimpleFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

NS_ASSUME_NONNULL_BEGIN

// 工厂类
@interface Factory : NSObject

+ (Appliance *)factoryWithString:(NSString *)string; //工厂方法

@end

NS_ASSUME_NONNULL_END
