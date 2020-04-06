//
//  Image.m
//  BridgePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Image.h"

@implementation Image

- (instancetype)initWithImageImp:(ImageImp)imageImp {
    self = [super init];
    if (self) {
        _imageImp = imageImp;
    }
    return self;
}

- (void)showDifferentImage {}

@end
