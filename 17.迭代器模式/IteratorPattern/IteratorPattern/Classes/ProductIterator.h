//
//  ProductIterator.h
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractIterator.h"

NS_ASSUME_NONNULL_BEGIN

@class ProductList;
// 商品迭代器：具体迭代器
@interface ProductIterator : NSObject <AbstractIterator>
- (instancetype)initWithProductList:(ProductList *)list;
@end

NS_ASSUME_NONNULL_END
