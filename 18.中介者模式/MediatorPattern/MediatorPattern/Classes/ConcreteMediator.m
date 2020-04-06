//
//  ConcreteMediator.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

- (void)sendMessage:(NSString *)message colleague:(Colleague *)colleague {
    Colleague *zhangSan = self.colleagues[0];
    Colleague *liSi = self.colleagues[1];
    Colleague *wangWu = self.colleagues[2];
    
    if (colleague == zhangSan) {
        [liSi getMessage:message]; // 通过中介者调用同事类的方法
        [wangWu getMessage:message];
    } else if (colleague == liSi) {
        [zhangSan getMessage:message];
    }
}

@end
