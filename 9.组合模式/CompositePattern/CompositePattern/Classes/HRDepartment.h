//
//  HRDepartment.h
//  CompositePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"

NS_ASSUME_NONNULL_BEGIN

// 叶子构件Leaf
@interface HRDepartment : NSObject <Company>

@end

NS_ASSUME_NONNULL_END
