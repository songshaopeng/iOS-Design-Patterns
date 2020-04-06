//
//  AirConditioning.h
//  AbstractFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// AirConditioning 空调：抽象产品类
@interface AirConditioning : NSObject
- (void)coolAir; //抽象方法
@end

NS_ASSUME_NONNULL_END
