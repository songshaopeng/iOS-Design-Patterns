//
//  House.h
//  DecoratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// House类, 表示Component抽象构件
@interface House : NSObject
- (void)decorateHouse;
@end

NS_ASSUME_NONNULL_END
