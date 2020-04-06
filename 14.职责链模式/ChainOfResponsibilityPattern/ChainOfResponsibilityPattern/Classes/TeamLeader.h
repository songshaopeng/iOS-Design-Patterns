//
//  TeamLeader.h
//  ChainOfResponsibilityPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Leader.h"

NS_ASSUME_NONNULL_BEGIN

// 最后创建三个类TeamLeader、DeparmentManager和CTO，都继承自Leader类，表示具体处理者
@interface TeamLeader : Leader

@end

NS_ASSUME_NONNULL_END
