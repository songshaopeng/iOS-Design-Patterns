//
//  AirConditioning.m
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "AirConditioning.h"

@implementation AirConditioning

- (void)work {
    NSLog(@"夏天开%@空调好凉快呀", self.factoryName);
}

@end
