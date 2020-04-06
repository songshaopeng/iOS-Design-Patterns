//
//  HaierFactory.m
//  AbstractFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "HaierFactory.h"
#import "HaierAirConditioning.h"
#import "HaierWasher.h"

@implementation HaierFactory

- (AirConditioning *)createAirConditioning {
    return [HaierAirConditioning new];
}

- (Washer *)createWasher {
    return [HaierWasher new];
}

@end
