//
//  PhoneStore.m
//  FacadePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "PhoneStore.h"
#import "AppleCompany.h"
#import "HuaWeiCompany.h"
#import "XiaoMiCompany.h"

@interface PhoneStore ()
@property(nonatomic, strong) AppleCompany *apple;
@property(nonatomic, strong) HuaWeiCompany *huaWei;
@property(nonatomic, strong) XiaoMiCompany *xiaoMi;
@end

@implementation PhoneStore

- (instancetype)init
{
    self = [super init];
    if (self) {
        _apple = [AppleCompany new];
        _huaWei = [HuaWeiCompany new];
        _xiaoMi = [XiaoMiCompany new];
    }
    return self;
}

- (void)sellAllPhones {
    [self.apple sellIphones];
    [self.huaWei sellHuaWeiPhones];
    [self.xiaoMi sellXiaoMiPhones];
}

@end
