//
//  Chessman.m
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Chessman.h"

@implementation Chessman

- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y {
    self = [super init];
    if (self) {
        _name = name;
        _x = x;
        _y = y;
    }
    return self;
}

- (ChessmanMemento *)save {
    return [[ChessmanMemento alloc] initWithName:self.name x:self.x y:self.y];
}

- (void)restore:(ChessmanMemento *)memento {
    self.name = memento.name;
    self.x = memento.x;
    self.y = memento.y;
}

@end
