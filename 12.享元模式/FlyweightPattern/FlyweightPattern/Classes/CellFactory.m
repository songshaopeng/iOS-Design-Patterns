//
//  CellFactory.m
//  FlyweightPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "CellFactory.h"
#import "ImageCell.h"
#import "TextCell.h"

@interface CellFactory ()
@property(nonatomic, strong) NSMutableDictionary *dict; //享元池
@end

@implementation CellFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dict = [NSMutableDictionary dictionary];
    }
    return self;
}

+ (instancetype)sharedInstance { //单例模式
    static CellFactory *factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        factory = [CellFactory new];
    });
    return factory;
}

- (Cell *)getCellWithCellID:(NSString *)cellID { //享元工厂类核心代码
    if ([self.dict.allKeys containsObject:cellID]) {
        return [self.dict objectForKey:cellID];
    } else {
        if ([cellID isEqualToString:@"ImageCell"]) {
            ImageCell *imageCell = [ImageCell new];
            [self.dict setObject:imageCell forKey:cellID];
            return imageCell;
        } else if ([cellID isEqualToString:@"TextCell"]) {
            TextCell *textCell = [TextCell new];
            [self.dict setObject:textCell forKey:cellID];
            return textCell;
        } else {
            return nil;
        }
    }
}


@end
