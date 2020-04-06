//
//  HRDepartment.m
//  CompositePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "HRDepartment.h"

@implementation HRDepartment

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
        NSLog(@"%@：give an offer", self.name);
}

@end
