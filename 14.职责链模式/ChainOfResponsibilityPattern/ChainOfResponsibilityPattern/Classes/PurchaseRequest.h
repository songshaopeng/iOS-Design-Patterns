//
//  PurchaseRequest.h
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 先创建一个PurchaseRequest采购单类，表示Request
@interface PurchaseRequest : NSObject
@property (nonatomic, assign) float price;
@property (nonatomic, copy) NSString *purpose;
- (instancetype)initWithPrice:(float)price purpose:(NSString *)purpose;
@end

NS_ASSUME_NONNULL_END
