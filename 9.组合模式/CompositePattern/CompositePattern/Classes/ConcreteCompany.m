//
//  ConcreteCompany.m
//  CompositePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ConcreteCompany.h"

@interface ConcreteCompany ()
@property(nonatomic, strong) NSMutableArray *childList;
@end

@implementation ConcreteCompany

@synthesize name = _name;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _childList = [NSMutableArray array];
        _name = name;
    }
    return self;
}

- (void)add:(id<Company>)company {
    [self.childList addObject:company];
}

- (void)remove:(id<Company>)company {
    if ([self.childList containsObject:company]) {
        [self.childList removeObject:company];
    }
}

- (void)work {
    NSLog(@"%@-----------", self.name);
    for (Company company in self.childList) { //递归遍历
        [company work];
    }
}

@end
