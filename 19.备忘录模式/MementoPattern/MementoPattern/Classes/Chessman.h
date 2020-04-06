//
//  Chessman.h
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChessmanMemento.h"

NS_ASSUME_NONNULL_BEGIN

// 象棋棋子类：原发器
@interface Chessman : NSObject
@property(nonatomic, copy) NSString *name;
@property(nonatomic, assign) NSInteger x;
@property(nonatomic, assign) NSInteger y;
- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y;
- (ChessmanMemento *)save; //保存状态
- (void)restore:(ChessmanMemento *)memento; //恢复状态
@end

NS_ASSUME_NONNULL_END
