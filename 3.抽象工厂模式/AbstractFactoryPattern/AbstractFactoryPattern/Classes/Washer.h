//
//  Washer.h
//  AbstractFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Washer 洗衣机：抽象产品类
@interface Washer : NSObject
- (void)washClothes; //抽象方法
@end

NS_ASSUME_NONNULL_END
