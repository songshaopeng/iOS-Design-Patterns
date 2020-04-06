//
//  FishCommand.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "FishCommand.h"
#import "Cook.h"

@interface FishCommand ()
@property (nonatomic, strong) Cook *cook;
@end

@implementation FishCommand

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cook = [Cook new];
    }
    return self;
}

- (void)execute {
    [self.cook cookFoodWithDescription:@"烤鱼一条"];
}

@end
