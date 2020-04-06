//
//  ChessmanMemento.m
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ChessmanMemento.h"

@implementation ChessmanMemento

- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y {
    self = [super init];
    if (self) {
        _name = name;
        _x = x;
        _y = y;
    }
    return self;
}

@end
