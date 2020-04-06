//
//  Context.m
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Context.h"

@interface Context ()
@property(nonatomic, strong) NSMutableDictionary *dict;
@end

@implementation Context

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dict = [NSMutableDictionary dictionary];
        [_dict setObject:@"向左" forKey:@"left"];
        [_dict setObject:@"向右" forKey:@"right"];
        [_dict setObject:@"向前" forKey:@"forward"];
        [_dict setObject:@"向后" forKey:@"backward"];
    }
    return self;
}

- (NSString *)getObjectWithKey:(NSString *)key {
    if ([self.dict.allKeys containsObject:key]) {
        return [self.dict objectForKey:key];
    }
    return nil;
}

@end
