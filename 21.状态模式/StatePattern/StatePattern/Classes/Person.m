//
//  Person.m
//  StatePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Person.h"
#import "NormalMemberState.h"
#import "GoldMemberState.h"
#import "PlatinumMemberState.h"
#import "DiamondMemberState.h"

@implementation Person

- (void)setMoney:(NSInteger)money {
    _money = money;
    [self changeState];
}

// 判断属性值，根据属性值进行状态转换
- (void)changeState {
    NSInteger money = self.money;
    if (money <= 0) {
        NSLog(@"请充值，才能有更好的游戏体验");
        return;
    }
    
    if (money < 10) {
        self.state = [NormalMemberState new];
    } else if (money < 100) {
        self.state = [GoldMemberState new];
    } else if (money < 1000) {
        self.state = [PlatinumMemberState new];
    } else {
        self.state = [DiamondMemberState new];
    }
}

- (void)playGame {
    [self.state handle]; //调用状态对象的业务方法
}

@end
