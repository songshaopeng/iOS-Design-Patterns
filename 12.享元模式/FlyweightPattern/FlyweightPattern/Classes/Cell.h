//
//  Cell.h
//  FlyweightPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 创建一个Cell类，里面有内部状态和设置外部状态的方法，表示抽象享元类
@interface Cell : NSObject
@property(nonatomic, copy, readonly) NSString *cellID; //内部状态
- (void)setRowIndex:(NSInteger)rowIndex; //外部状态
@end

NS_ASSUME_NONNULL_END
