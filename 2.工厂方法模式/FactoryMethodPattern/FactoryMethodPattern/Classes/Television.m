//
//  Television.m
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Television.h"

@implementation Television

- (void)work {
    NSLog(@"用%@电视看龙珠", self.factoryName);
}

@end
