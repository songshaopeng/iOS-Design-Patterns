//
//  ServiceDepartment.m
//  CompositePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ServiceDepartment.h"

@implementation ServiceDepartment

@synthesize name = _name;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
- (void)add:(id<Company>)company {}
- (void)remove:(id<Company>)company {}
- (void)work {
    NSLog(@"%@：call customers", self.name);
}

@end
