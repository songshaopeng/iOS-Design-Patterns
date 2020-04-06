//
//  AbstractObjectList.m
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "AbstractObjectList.h"

@interface AbstractObjectList ()
@property(nonatomic, strong) NSMutableArray *objects;
@end

@implementation AbstractObjectList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _objects = [NSMutableArray array];
    }
    return self;
}

- (void)addObject:(id)object {
    [self.objects addObject:object];
}

- (void)removeObject:(id)object {
    [self.objects removeObject:object];
}

- (NSArray *)getObjects {
    return self.objects;
}

- (AbstractIterator)createIterator {
    return nil;
}

@end
