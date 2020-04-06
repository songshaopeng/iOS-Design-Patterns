//
//  AbstractFactory.h
//  AbstractFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AirConditioning.h"
#import "Washer.h"

NS_ASSUME_NONNULL_BEGIN

// AbstractFactory 抽象工厂类
@interface AbstractFactory : NSObject
- (AirConditioning *)createAirConditioning; //工厂方法一
- (Washer *)createWasher; //工厂方法二
@end

NS_ASSUME_NONNULL_END
