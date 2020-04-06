//
//  CellFactory.h
//  FlyweightPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"

NS_ASSUME_NONNULL_BEGIN

// 创建一个CellFactory类，里面有一个享元池，表示享元工厂类
@interface CellFactory : NSObject
+ (instancetype)sharedInstance;
- (Cell *)getCellWithCellID:(NSString *)cellID;
@end

NS_ASSUME_NONNULL_END
