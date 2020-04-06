//
//  ProductIterator.m
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ProductIterator.h"
#import "ProductList.h"

@interface ProductIterator ()
@property(nonatomic, strong) NSArray *objects;
@property(nonatomic, assign) NSInteger index;
@end

@implementation ProductIterator

- (instancetype)initWithProductList:(ProductList *)list {
    self = [super init];
    if (self) {
        _objects = [list getObjects];
        _index = 0;
    }
    return self;
}

- (void)next {
    if (self.index < self.objects.count) {
        self.index ++;
    }
}

- (BOOL)isLast {
    return (self.index == self.objects.count);
}

- (id)getCurrentItem {
    return self.objects[self.index];
}

@end
