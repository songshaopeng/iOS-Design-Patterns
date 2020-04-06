//
//  Leader.h
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PurchaseRequest.h"

NS_ASSUME_NONNULL_BEGIN

// 然后创建Leader类，类中有一个successor属性，还有处理request的方法，表示抽象处理者
@interface Leader : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) Leader *successor; //继任者
- (instancetype)initWithName:(NSString *)name;
- (void)handleRequest:(PurchaseRequest *)request;
@end

NS_ASSUME_NONNULL_END
