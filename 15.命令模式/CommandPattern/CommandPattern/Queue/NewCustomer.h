//
//  NewCustomer.h
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandQueue.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewCustomer : NSObject
@property (nonatomic, strong) CommandQueue *queue;
- (instancetype)initWithQueue:(CommandQueue *)queue;
- (void)needFood;
@end

NS_ASSUME_NONNULL_END
