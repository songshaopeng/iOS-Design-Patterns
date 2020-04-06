//
//  ChessmanMemento.h
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 象棋棋子备忘录类
@interface ChessmanMemento : NSObject
@property(nonatomic, copy) NSString *name;
@property(nonatomic, assign) NSInteger x;
@property(nonatomic, assign) NSInteger y;
- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y;
@end

NS_ASSUME_NONNULL_END
