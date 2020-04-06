//
//  Appliance.h
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 定义两个常量
#define kAirConditioning @"AirConditioning"
#define kTelevision @"Television"

// 电器类：抽象产品类
@interface Appliance : NSObject
@property(nonatomic, copy) NSString *factoryName;
- (void)work; //抽象方法
@end

NS_ASSUME_NONNULL_END
