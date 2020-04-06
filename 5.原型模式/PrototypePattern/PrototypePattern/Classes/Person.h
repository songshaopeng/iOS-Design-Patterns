//
//  Person.h
//  PrototypePattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CloneProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <CloneProtocol>

@end

NS_ASSUME_NONNULL_END
