//
//  IphoneBuilder.m
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "IphoneBuilder.h"
#import "Phone.h"

@implementation IphoneBuilder

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
    _phone.cpu = @"A系列处理器";
}

- (void)buildScreen {
    _phone.screen = @"三星屏幕";
}

- (void)buildCamera {
    _phone.camera = @"Sony摄像头";
}

- (void)buildSystem {
    _phone.system = @"iOS系统";
}

@end
