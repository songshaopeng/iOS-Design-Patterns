//
//  LinuxImp.h
//  BridgePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageImp.h"

NS_ASSUME_NONNULL_BEGIN

// Linux平台画图，表示ConcreteImplementor具体实现类
@interface LinuxImp : NSObject <ImageImp>

@end

NS_ASSUME_NONNULL_END
