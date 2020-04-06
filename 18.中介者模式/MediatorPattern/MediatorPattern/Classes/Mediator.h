//
//  Mediator.h
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colleague.h"

NS_ASSUME_NONNULL_BEGIN

// 先创建一个Mediator类，表示抽象中介者
@interface Mediator : NSObject
@property(nonatomic, strong, readonly) NSMutableArray<Colleague *> *colleagues;
- (void)add:(Colleague *)colleague;
- (void)sendMessage:(NSString *)message colleague:(Colleague *)colleague;
@end

NS_ASSUME_NONNULL_END
