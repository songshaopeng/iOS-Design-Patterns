//
//  Cell.m
//  FlyweightPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (NSString *)cellID {
    return @"cellID";
}

- (void)setRowIndex:(NSInteger)rowIndex {
    NSLog(@"Cell复用ID = %@, rowIndex = %ld", self.cellID, rowIndex);
}

@end
