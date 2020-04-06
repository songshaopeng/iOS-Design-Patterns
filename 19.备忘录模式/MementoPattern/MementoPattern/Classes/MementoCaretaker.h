//
//  MementoCaretaker.h
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChessmanMemento.h"

NS_ASSUME_NONNULL_BEGIN

// 象棋棋子备忘录管理类
@interface MementoCaretaker : NSObject
- (void)addMemento:(ChessmanMemento *)memento;
- (ChessmanMemento *)getMemento:(NSInteger)index;
@end

NS_ASSUME_NONNULL_END
