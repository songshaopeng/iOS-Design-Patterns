//
//  IphoneBuilder.h
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneBuilder.h"

NS_ASSUME_NONNULL_BEGIN

// 具体建造者
@interface IphoneBuilder : NSObject <PhoneBuilder>

@end

NS_ASSUME_NONNULL_END
