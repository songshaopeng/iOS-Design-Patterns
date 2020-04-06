//
//  ImageImp.h
//  BridgePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Implementor实现类接口
@protocol ImageImp <NSObject>
- (void)drawImage;
@end

typedef id<ImageImp> ImageImp;

NS_ASSUME_NONNULL_END
