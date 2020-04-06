//
//  MideaFactory.m
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "MideaFactory.h"
#import "AirConditioning.h"

@implementation MideaFactory

// 美的只生产空调
+ (Appliance *)factoryWithString:(NSString *)string {
    Appliance *appliance = nil;
    if ([string isEqualToString:kAirConditioning]) {
        appliance = [AirConditioning new];
        appliance.factoryName = @"美的";
    }
    return appliance;
}

@end
