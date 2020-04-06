//
//  MuttonCommand.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "MuttonCommand.h"
#import "Cook.h"

@interface MuttonCommand ()
@property (nonatomic, strong) Cook *cook;
@end

@implementation MuttonCommand

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cook = [Cook new];
    }
    return self;
}

- (void)execute {
    [self.cook cookFoodWithDescription:@"烤羊肉串10串"];
}

@end
