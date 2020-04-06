//
//  IphoneAdapter1.h
//  AdapterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Electrical1.h"
#import "IphoneAdaptee1.h"

NS_ASSUME_NONNULL_BEGIN

// 苹果电源适配器，适配器类
@interface IphoneAdapter1 : Electrical1
- (instancetype)initWithAdaptee:(IphoneAdaptee1 *)adaptee; //初始化方法，引入Adaptee
@end

NS_ASSUME_NONNULL_END
