//
//  MemberState.h
//  StatePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 创建一个MemberState协议，有个handle()方法，表示抽象状态类
@protocol MemberState <NSObject>
- (void)handle; //声明抽象业务方法，不同的具体状态类可以不同的实现
@end

typedef id<MemberState> MemberState;

NS_ASSUME_NONNULL_END
