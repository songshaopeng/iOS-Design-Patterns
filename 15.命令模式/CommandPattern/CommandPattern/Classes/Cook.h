//
//  Cook.h
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 最后创建两个类Cook和Supermarket，一个时负责做饭的，一个负责买现成的，表示接收者
@interface Cook : NSObject
- (void)cookFoodWithDescription:(NSString *)des;
@end

NS_ASSUME_NONNULL_END
