//
//  PhoneDirector.h
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
#import "PhoneBuilder.h"

NS_ASSUME_NONNULL_BEGIN

// 指挥者
@interface PhoneDirector : NSObject
- (Phone *)constructWithBuilder:(PhoneBuilder)builder;
@end

NS_ASSUME_NONNULL_END
