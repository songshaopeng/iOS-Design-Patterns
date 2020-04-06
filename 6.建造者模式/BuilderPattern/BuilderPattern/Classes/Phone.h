//
//  Phone.h
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 产品角色
@interface Phone : NSObject
@property(nonatomic, copy) NSString *cpu;
@property(nonatomic, copy) NSString *screen;
@property(nonatomic, copy) NSString *camera;
@property(nonatomic, copy) NSString *system;
@end

NS_ASSUME_NONNULL_END
