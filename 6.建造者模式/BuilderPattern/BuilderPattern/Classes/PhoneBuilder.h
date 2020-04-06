//
//  PhoneBuilder.h
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Phone;
// 抽象建造者，是个接口
@protocol PhoneBuilder <NSObject>
@property(nonatomic, strong) Phone *phone;
- (void)buildCPU;
- (void)buildScreen;
- (void)buildCamera;
- (void)buildSystem;
@end

typedef id<PhoneBuilder> PhoneBuilder; //重新命名类型，方便后面使用

NS_ASSUME_NONNULL_END
