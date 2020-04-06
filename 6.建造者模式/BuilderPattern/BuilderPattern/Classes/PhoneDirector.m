//
//  PhoneDirector.m
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "PhoneDirector.h"

@implementation PhoneDirector

- (Phone *)constructWithBuilder:(PhoneBuilder)builder {
    [builder buildCPU];
    [builder buildScreen];
    [builder buildCamera];
    [builder buildSystem];
    return builder.phone;
}

@end
