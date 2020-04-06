//
//  MementoCaretaker.m
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "MementoCaretaker.h"

@interface MementoCaretaker ()
@property(nonatomic, strong) NSMutableArray *mementoList;
@end

@implementation MementoCaretaker

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mementoList = [NSMutableArray array];
    }
    return self;
}

- (void)addMemento:(ChessmanMemento *)memento {
    [self.mementoList addObject:memento];
}

- (ChessmanMemento *)getMemento:(NSInteger)index {
    if (index < self.mementoList.count) {
        return self.mementoList[index];
    }
    return nil;
}

@end
