//
//  HaierFactory.m
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "HaierFactory.h"
#import "AirConditioning.h"
#import "Television.h"

@implementation HaierFactory

// 假设海尔生产空调和电视
+ (Appliance *)factoryWithString:(NSString *)string {
    Appliance *appliance = nil;
    if ([string isEqualToString:kAirConditioning]) {
        appliance = [AirConditioning new];
    } else if ([string isEqualToString:kTelevision]) {
        appliance = [Television new];
    }
    if (appliance) {
        appliance.factoryName = @"海尔";
    }
    return appliance;
}

@end
