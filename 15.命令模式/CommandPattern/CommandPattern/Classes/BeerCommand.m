//
//  BeerCommand.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "BeerCommand.h"
#import "Supermarket.h"

@interface BeerCommand ()
@property (nonatomic, strong) Supermarket *market;
@end

@implementation BeerCommand

- (instancetype)init
{
    self = [super init];
    if (self) {
        _market = [Supermarket new];
    }
    return self;
}

- (void)execute {
    [self.market supplyFoodWithDescription:@"啤酒一打"];
}

@end
