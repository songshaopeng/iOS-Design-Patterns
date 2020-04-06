//
//  AppleCompany.h
//  FacadePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 先创建三个类AppleCompany、HuaWeiCompany和XiaoMiCompany，表示子系统角色
@interface AppleCompany : NSObject
- (void)sellIphones;
@end

NS_ASSUME_NONNULL_END
