//
//  BuySomething.h
//  ProxyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 先创建一个BuySomething协议，协议有两个买东西的方法，表示抽象主题角色
@protocol BuySomething <NSObject>
- (void)buyLV; //购买LV
- (void)buyChanel; //购买香奈儿
@end

NS_ASSUME_NONNULL_END
