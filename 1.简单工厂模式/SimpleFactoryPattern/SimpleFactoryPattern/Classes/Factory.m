//
//  Factory.m
//  SimpleFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Factory.h"
#import "AirConditioning.h"
#import "Television.h"

@implementation Factory

+ (Appliance *)factoryWithString:(NSString *)string {
    Appliance *appliance = nil;
    if ([string isEqualToString:kAirConditioning]) {
        appliance = [AirConditioning new];
    } else if ([string isEqualToString:kTelevision]) {
        appliance = [Television new];
    }
    return appliance;
}

@end
