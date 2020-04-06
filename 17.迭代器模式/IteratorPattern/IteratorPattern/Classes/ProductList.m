//
//  ProductList.m
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ProductList.h"
#import "ProductIterator.h"

@implementation ProductList

- (AbstractIterator)createIterator {
    return [[ProductIterator alloc] initWithProductList:self];
}

@end
