//
//  Company.h
//  CompositePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Company协议, 表示抽象构件Component
@protocol Company <NSObject>
@property(nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;

- (void)add:(id<Company>)company;
- (void)remove:(id<Company>)company;
- (void)work;
@end

typedef id<Company> Company;

NS_ASSUME_NONNULL_END
