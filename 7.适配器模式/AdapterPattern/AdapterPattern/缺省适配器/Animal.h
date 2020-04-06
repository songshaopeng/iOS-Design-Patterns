//
//  Animal.h
//  AdapterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimalProtocol.h"

NS_ASSUME_NONNULL_BEGIN

// AbstractServiceClass缺省适配器类
@interface Animal : NSObject <AnimalProtocol>

@end

NS_ASSUME_NONNULL_END
