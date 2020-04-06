//
//  IphoneAdapter1.m
//  AdapterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "IphoneAdapter1.h"

@interface IphoneAdapter1 ()
@property(nonatomic, strong) IphoneAdaptee1 *adaptee;
@end

@implementation IphoneAdapter1
- (instancetype)initWithAdaptee:(IphoneAdaptee1 *)adaptee {
    self = [super init];
    if (self) {
        _adaptee = adaptee;
    }
    return self;
}

- (void)charge {
    [self.adaptee iphoneCharge]; //实现转发调用效果
}
@end
