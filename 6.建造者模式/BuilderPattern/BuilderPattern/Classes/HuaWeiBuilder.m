//
//  HuaWeiBuilder.m
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "HuaWeiBuilder.h"
#import "Phone.h"

@implementation HuaWeiBuilder

@synthesize phone = _phone;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _phone = [Phone new];
    }
    return self;
}

- (void)buildCPU {
    _phone.cpu = @"麒麟处理器";
}

- (void)buildScreen {
    _phone.screen = @"京东方屏幕";
}

- (void)buildCamera {
    _phone.camera = @"莱卡摄像头";
}

- (void)buildSystem {
    _phone.system = @"安卓系统";
}

@end
