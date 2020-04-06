//
//  PhoneStore.h
//  FacadePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 创建一个PhoneStore类，拥有上述三个类的实例，方便调用三个公司的方法，表示外观角色
@interface PhoneStore : NSObject
- (void)sellAllPhones;
@end

NS_ASSUME_NONNULL_END
