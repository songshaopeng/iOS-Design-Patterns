//
//  PurchaseRequest.m
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "PurchaseRequest.h"

@implementation PurchaseRequest

- (instancetype)initWithPrice:(float)price purpose:(NSString *)purpose {
    self = [super init];
    if (self) {
        _price = price;
        _purpose = purpose;
    }
    return self;
}

@end
