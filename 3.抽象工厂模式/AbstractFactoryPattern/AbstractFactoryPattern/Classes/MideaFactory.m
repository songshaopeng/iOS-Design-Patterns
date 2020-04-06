//
//  MideaFactory.m
//  AbstractFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "MideaFactory.h"
#import "MideaAirConditioning.h"
#import "MideaWasher.h"

@implementation MideaFactory

- (AirConditioning *)createAirConditioning {
    return [MideaAirConditioning new];
}

- (Washer *)createWasher {
    return [MideaWasher new];
}

@end
